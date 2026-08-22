import XCTest
import SpatialDsp

/// M1 验收测试 — spatial_dsp 在 iOS 上编译并正确工作。
/// 与 macOS 冒烟测试 (tools/dsp_smoke) 同断言, 真机/模拟器均可跑。
/// HRIR 由 SpatialDsp pod 打进 App bundle (Bundle.main)。
final class SpatialDspTests: XCTestCase {

    private let sampleRate = 48000
    private let frames = 256
    private let bursts = 120 // 多帧, 覆盖 STFT 稳态

    private func hasNaN(_ buf: UnsafePointer<Float>, _ n: Int) -> Bool {
        for i in 0..<n where buf[i].isNaN || buf[i].isInfinite { return true }
        return false
    }

    private func rms(_ buf: UnsafePointer<Float>, _ n: Int) -> Double {
        var s = 0.0
        for i in 0..<n { s += Double(buf[i]) * Double(buf[i]) }
        return (s / Double(n)).squareRoot()
    }

    private func diffRms(_ a: UnsafePointer<Float>, _ b: UnsafePointer<Float>, _ n: Int) -> Double {
        var s = 0.0
        for i in 0..<n {
            let d = Double(a[i]) - Double(b[i])
            s += d * d
        }
        return (s / Double(n)).squareRoot()
    }

    private func makeInput(_ total: Int) -> [Float] {
        // 1kHz 正弦 (双声道交织)
        var input = [Float](repeating: 0, count: total * 2)
        for i in 0..<total {
            let v = 0.5 * sin(2.0 * Double.pi * 1000.0 * Double(i) / Double(sampleRate))
            input[i * 2] = Float(v)
            input[i * 2 + 1] = Float(v)
        }
        return input
    }

    private func hrirPath() -> String? {
        Bundle.main.path(forResource: "cipic_v9_hrir", ofType: "bin")
    }

    func testBypassPassthrough() {
        let dsp = ssp_create()
        XCTAssertNotNil(dsp)
        XCTAssertEqual(ssp_configure(dsp, Int32(sampleRate), Int32(frames)), 0)

        let total = frames * bursts
        let input = makeInput(total)
        var out = [Float](repeating: 0, count: total * 2)

        ssp_set_bypass(dsp, 1)
        out.withUnsafeMutableBufferPointer { ob in
            input.withUnsafeBufferPointer { ib in
                ssp_process(dsp, ib.baseAddress, ob.baseAddress, Int32(total))
            }
        }
        // bypass = 逐位 memcpy
        XCTAssertEqual(out, input, "bypass 输出应与输入逐位一致")
        ssp_destroy(dsp)
    }

    func testUpmixHrtfProcessing() throws {
        let dsp = ssp_create()
        XCTAssertEqual(ssp_configure(dsp, Int32(sampleRate), Int32(frames)), 0)

        let path = try XCTUnwrap(hrirPath(), "HRIR 资源未打进 App bundle")
        XCTAssertEqual(ssp_load_hrir_file(dsp, path), 0)

        ssp_set_bypass(dsp, 0)
        ssp_set_upmix(dsp, 1, 0)               // Music layout
        ssp_set_upmix_gains(dsp, 2.0, 2.0, 2.0)
        ssp_set_hrtf(dsp, 1, 4, 0.5)           // 男·中头·中耳
        ssp_flush(dsp)

        let total = frames * bursts
        let input = makeInput(total)
        var out = [Float](repeating: 0, count: total * 2)
        out.withUnsafeMutableBufferPointer { ob in
            input.withUnsafeBufferPointer { ib in
                ssp_process(dsp, ib.baseAddress, ob.baseAddress, Int32(total))
            }
        }
        out.withUnsafeBufferPointer { ob in
            XCTAssertFalse(hasNaN(ob.baseAddress!, total * 2), "输出不应含 NaN/Inf")
            XCTAssertGreaterThan(rms(ob.baseAddress!, total * 2), 1e-4, "输出不应静音")
        }
        XCTAssertNotEqual(out, input, "处理后输出应不同于输入")
        ssp_destroy(dsp)
    }

    func testHeadRotationChangesOutput() throws {
        let dsp = ssp_create()
        XCTAssertEqual(ssp_configure(dsp, Int32(sampleRate), Int32(frames)), 0)
        let path = try XCTUnwrap(hrirPath())
        XCTAssertEqual(ssp_load_hrir_file(dsp, path), 0)

        ssp_set_bypass(dsp, 0)
        ssp_set_upmix(dsp, 1, 0)
        ssp_set_upmix_gains(dsp, 2.0, 2.0, 2.0)
        ssp_set_hrtf(dsp, 1, 4, 0.5)

        let total = frames * bursts
        let input = makeInput(total)
        var out0 = [Float](repeating: 0, count: total * 2)
        var out30 = [Float](repeating: 0, count: total * 2)

        ssp_set_head_rotation(dsp, 0, 0, 1)
        ssp_flush(dsp)
        out0.withUnsafeMutableBufferPointer { ob in
            input.withUnsafeBufferPointer { ib in
                ssp_process(dsp, ib.baseAddress, ob.baseAddress, Int32(total))
            }
        }
        ssp_set_head_rotation(dsp, 30, 0, 1)
        ssp_flush(dsp)
        out30.withUnsafeMutableBufferPointer { ob in
            input.withUnsafeBufferPointer { ib in
                ssp_process(dsp, ib.baseAddress, ob.baseAddress, Int32(total))
            }
        }
        out30.withUnsafeBufferPointer { ob in
            XCTAssertFalse(hasNaN(ob.baseAddress!, total * 2))
        }
        XCTAssertNotEqual(out0, out30, "头部旋转 (0° vs 30°) 应改变输出")
        ssp_destroy(dsp)
    }

    func testEqReverbStability() throws {
        let dsp = ssp_create()
        XCTAssertEqual(ssp_configure(dsp, Int32(sampleRate), Int32(frames)), 0)
        let path = try XCTUnwrap(hrirPath())
        XCTAssertEqual(ssp_load_hrir_file(dsp, path), 0)

        ssp_set_bypass(dsp, 0)
        ssp_set_upmix(dsp, 1, 0)
        ssp_set_hrtf(dsp, 1, 4, 0.5)

        var gains: [Float] = [3, 2, 1, 0, -1, -2, 0, 1, 2, 3]
        gains.withUnsafeBufferPointer { gb in
            ssp_set_eq(dsp, 1, gb.baseAddress)
        }
        ssp_set_reverb(dsp, 1, 0.3, 8.0, 0.5, 0.7, 20.0, -12.0)
        ssp_flush(dsp)

        let total = frames * bursts
        let input = makeInput(total)
        var out = [Float](repeating: 0, count: total * 2)
        out.withUnsafeMutableBufferPointer { ob in
            input.withUnsafeBufferPointer { ib in
                ssp_process(dsp, ib.baseAddress, ob.baseAddress, Int32(total))
            }
        }
        out.withUnsafeBufferPointer { ob in
            XCTAssertFalse(hasNaN(ob.baseAddress!, total * 2))
            XCTAssertGreaterThan(rms(ob.baseAddress!, total * 2), 1e-4)
        }
        ssp_destroy(dsp)
    }
}
