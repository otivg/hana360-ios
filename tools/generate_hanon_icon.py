#!/usr/bin/env python3
"""花音 Hanon 头像 APP 图标生成器。

从 MascotPainter 几何（docs/hana360_yinling_family_design_and_code.md §4）
精确复现花音 Hanon 头像（花朵音符团子），生成:
  - assets/icon/icon.png             (1024×1024, 粉色底 #F4A7B9)
  - assets/icon/icon_foreground.png  (1024×1024, 透明底, Android adaptive)
  - ios/Runner/Assets.xcassets/AppIcon.appiconset/ 的 15 个尺寸 PNG

与 test/tools/generate_icon_test.dart 渲染逻辑一致（同尺寸/定位/scale），
不依赖 Flutter 环境。所有半透明色已预混合为不透明色，输出 PNG 无 alpha
(避免 App Store "icon contains alpha channel" 拒绝)。

运行:  python3 tools/generate_hanon_icon.py
依赖:  Pillow  (pip3 install Pillow)
"""
import math
import os

try:
    from PIL import Image, ImageDraw
except ImportError:
    print("缺少 Pillow，请先安装: pip3 install Pillow")
    raise SystemExit(1)

# ---- HanaColors 配色 ----
PETAL       = (244, 167, 185)   # #F4A7B9
PETAL_DEEP  = (232, 130, 155)   # #E8829B
CREAM       = (251, 246, 240)   # #FBF6F0
INK         = (44, 42, 51)      # #2C2A33
NOSE        = (59, 43, 40)      # #3B2B28
NOTE        = (83, 74, 183)     # #534AB7
WHITE       = (255, 255, 255)

# 半透明形状预混合到 cream/petal 上的不透明色 (Pillow 不 blend alpha)
CREAM_SHADE = (246, 237, 228)   # creamShade @0.45 on cream
BLUSH       = (247, 206, 212)   # blush @0.5 on cream
INK_ON_CREAM  = (137, 134, 136) # ink outline @0.55 on cream
INK_ON_PETAL  = (134, 98, 111)  # ink outline @0.55 on petal
HI_WHITE_07 = (192, 191, 194)   # white @0.7 on ink
HI_WHITE_NOSE = (196, 191, 190) # white @0.7 on nose

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def _quad_pts(p0, p1, p2, n=28):
    out = []
    for i in range(n + 1):
        t = i / n
        x = (1 - t) ** 2 * p0[0] + 2 * (1 - t) * t * p1[0] + t ** 2 * p2[0]
        y = (1 - t) ** 2 * p0[1] + 2 * (1 - t) * t * p1[1] + t ** 2 * p2[1]
        out.append((x, y))
    return out


def render(size=1024, with_background=True, supersample=3):
    ss = supersample
    W = size * ss
    scale = W / (130 if with_background else 175)
    ox = W / 2.0
    oy = W * 0.47

    def P(x, y):
        return (ox + (x - 60) * scale, oy + (y - 62) * scale)

    img = Image.new("RGBA", (W, W), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)

    if with_background:
        d.rectangle([0, 0, W, W], fill=PETAL + (255,))
        outline_ink = INK_ON_CREAM + (255,)
    else:
        outline_ink = INK + (140,)  # foreground 保留半透明描边

    def circle(cx, cy, r, fill, outline=None, width=1.0):
        x0, y0 = P(cx - r, cy - r)
        x1, y1 = P(cx + r, cy + r)
        ow = max(1, int(width * scale)) if outline else None
        d.ellipse([x0, y0, x1, y1], fill=fill + (255,),
                  outline=outline, width=ow)

    def ellipse(cx, cy, rx, ry, fill, outline=None, width=1.0):
        x0, y0 = P(cx - rx, cy - ry)
        x1, y1 = P(cx + rx, cy + ry)
        ow = max(1, int(width * scale)) if outline else None
        d.ellipse([x0, y0, x1, y1], fill=fill + (255,),
                  outline=outline, width=ow)

    def ellipse_rot(cx, cy, rx, ry, theta, fill, outline):
        pts = []
        n = 72
        for i in range(n):
            t = i / n * 2 * math.pi
            lx = rx * math.cos(t)
            ly = ry * math.sin(t)
            gx = cx + lx * math.cos(theta) - ly * math.sin(theta)
            gy = cy + lx * math.sin(theta) + ly * math.cos(theta)
            pts.append(P(gx, gy))
        d.polygon(pts, fill=fill + (255,), outline=outline)

    def polyline(pts, fill, width=1.0):
        d.line([P(x, y) for x, y in pts], fill=fill + (255,),
               width=max(1, int(width * scale)), joint="curve")

    # ---- 花瓣 ×5 (无背景用 PETAL 浅粉, 有背景用 PETAL_DEEP 深粉增加对比) ----
    petal_color = PETAL_DEEP if with_background else PETAL
    petal_center = (180, 60, 100) if with_background else PETAL_DEEP
    for i in range(5):
        a = -math.pi / 2 + i * 2 * math.pi / 5
        px = 60 + 14 * math.cos(a)
        py = 27 + 14 * math.sin(a)
        ellipse_rot(px, py, 5.0, 8.5, a - math.pi / 2, petal_color, outline_ink)

    circle(60, 27, 6, petal_center)

    # ---- 音符发梢 ----
    circle(113, 76, 5, NOTE)
    polyline([(117, 76), (117, 60)], NOTE, 1.6)
    polyline(_quad_pts((117, 60), (121, 62), (119, 67)), NOTE, 1.6)

    # ---- 头部 ----
    circle(60, 62, 40, CREAM, outline_ink, 1.4)
    ellipse(60, 80, 22, 13, CREAM_SHADE)
    ellipse(36, 72, 7, 4.5, BLUSH)
    ellipse(84, 72, 7, 4.5, BLUSH)

    # ---- 眼睛 (open, rx7.5 ry10) ----
    for ex in (44, 76):
        ellipse(ex, 60, 7.5, 10, INK)
        circle(ex + 3.0, 55.5, 2.4, WHITE)
        circle(ex - 2.625, 63, 1.1, HI_WHITE_07)

    # ---- 鼻子 ----
    ellipse(60, 68, 7.5, 5.5, NOSE)
    circle(57.5, 65.8, 1.6, HI_WHITE_NOSE)

    # ---- 嘴 (neutral) ----
    polyline(_quad_pts((53, 81), (60, 86), (67, 81)), INK, 2.4)

    if ss != 1:
        img = img.resize((size, size), Image.LANCZOS)
    return img


def save_png(img, path, rgb=True):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if rgb:
        img = img.convert("RGB")
    img.save(path)
    print("  已生成:", os.path.relpath(path, ROOT))


def main():
    print("生成花音 Hanon 头像图标 ...")

    # 1) 主图标
    icon_dir = os.path.join(ROOT, "assets", "icon")
    main = render(1024, with_background=True)
    save_png(main, os.path.join(icon_dir, "icon.png"), rgb=True)
    fg = render(1024, with_background=False)
    save_png(fg, os.path.join(icon_dir, "icon_foreground.png"), rgb=False)

    # 2) iOS AppIcon (Contents.json 引用的 15 个唯一文件名)
    appicon_dir = os.path.join(
        ROOT, "ios", "Runner", "Assets.xcassets", "AppIcon.appiconset")
    sizes = {
        "Icon-App-20x20@1x.png": 20,
        "Icon-App-20x20@2x.png": 40,
        "Icon-App-20x20@3x.png": 60,
        "Icon-App-29x29@1x.png": 29,
        "Icon-App-29x29@2x.png": 58,
        "Icon-App-29x29@3x.png": 87,
        "Icon-App-40x40@1x.png": 40,
        "Icon-App-40x40@2x.png": 80,
        "Icon-App-40x40@3x.png": 120,
        "Icon-App-60x60@2x.png": 120,
        "Icon-App-60x60@3x.png": 180,
        "Icon-App-76x76@1x.png": 76,
        "Icon-App-76x76@2x.png": 152,
        "Icon-App-83.5x83.5@2x.png": 167,
        "Icon-App-1024x1024@1x.png": 1024,
    }
    for name, px in sizes.items():
        img = render(px, with_background=True, supersample=2) if px >= 120 \
            else main.resize((px, px), Image.LANCZOS)
        save_png(img, os.path.join(appicon_dir, name), rgb=True)

    print("\n完成! 图标已写入 assets/icon/ 和 ios/.../AppIcon.appiconset/")


if __name__ == "__main__":
    main()
