Pod::Spec.new do |s|
  s.name             = 'SpatialDsp'
  s.version          = '1.0.0'
  s.summary          = 'Hanamimi 360 spatial audio DSP kernel (port of Baseus spatial_dsp)'
  s.description      = 'Pure C++ DSP chain: upmix -> HRTF -> EQ -> Reverb -> Limiter. ' \
                       'C API ssp_* (see spatial_dsp.h). Ported to be platform-neutral ' \
                       '(dsp_platform.h log shim); Android-only asset path is guarded out.'
  s.homepage         = 'https://github.com/hanamimi'
  s.license          = { :type => 'Proprietary' }
  s.author           = { 'Hanamimi' => 'dev@hanamimi.local' }
  s.platform         = :ios, '15.0'
  s.source           = { :path => '.' }

  s.source_files     = 'src/*.cpp', 'include/*.h'
  s.public_header_files = 'include/spatial_dsp.h'
  # 33MB CIPIC V9 HRIR — 打进 App bundle (Bundle.main 可直接取)
  s.resources        = ['Resources/cipic_v9_hrir.bin']

  s.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
    'CLANG_CXX_LIBRARY'           => 'libc++',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) DSP_USE_STDERR_LOG=1',
    # CocoaPods 生成的 umbrella header 用双引号 include, 与
    # CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER (Xcode 推荐设置) 冲突,
    # 在 pod 级关闭该警告 (与我们的代码无关)。
    'CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER' => 'NO',
  }
  # 静态 framework: 消费者 (App/测试) 链接本 pod 时必须带 libc++,
  # 否则 std::logic_error/length_error 等运行库符号 undefined (RunnerTests 链接报错)
  s.libraries = 'c++'
end
