import 'dart:math' as math;

import 'package:flutter/material.dart';

/// 花音 · HANA 音灵家族配色（原创，替换原比格犬 HanaColors）。
/// 类名保留 HanaColors 以便零改动接入（Hana = 品牌名），色值/语义全新。
abstract final class HanaColors {
  static const petal = Color(0xFFF4A7B9);      // 花瓣 / 腮红 / 图标底
  static const petalDeep = Color(0xFFE8829B);  // 深花瓣 / 蝴蝶结
  static const cream = Color(0xFFFBF6F0);      // 头部 / 肚皮
  static const creamShade = Color(0xFFEFE3D6); // 阴影
  static const ink = Color(0xFF2C2A33);        // 眼 / 统一描边
  static const nose = Color(0xFF3B2B28);       // 鼻 / 细描边
  static const blush = Color(0xFFF4A7B9);      // 腮红
  static const tongue = Color(0xFFF08CA0);     // 舌头
  static const note = Color(0xFF534AB7);       // 音符发梢
}

enum Accessory { none, bow, headphones, flower, crown, catEars }

enum EyeKind { open, wide, smile, half, closed }

enum BrowKind { none, happy, up, flat }

enum MouthKind { neutral, small, open, tongue }

class MascotPose {
  const MascotPose({
    required this.eyes,
    required this.brow,
    required this.mouth,
    this.tilt = 0,
  });

  final EyeKind eyes;
  final BrowKind brow;
  final MouthKind mouth;
  final double tilt;
}

/// 绘制主吉祥物「花音 Hanon」—— 花朵音符团子。
/// 设计空间：头部 120×132、全身 120×158（与原 MascotPainter 契约一致）。
class MascotPainter extends CustomPainter {
  MascotPainter({
    required this.pose,
    this.blink = 0, // 0=睁 1=闭（覆盖 open/wide）
    this.bob = 0, // 头部摆动（弧度）
    this.earSwing = 0, // 花瓣滞后摆动（弧度，替代原耳朵）
    this.bodyBounce = 0,
    this.fullBody = false,
    this.sleepPhase, // 非空时绘制上浮 z/z
    this.accessory = Accessory.none,
  });

  final MascotPose pose;
  final double blink;
  final double bob;
  final double earSwing;
  final double bodyBounce;
  final bool fullBody;
  final double? sleepPhase;
  final Accessory accessory;

  static const _w = 120.0;

  @override
  void paint(Canvas canvas, Size size) {
    final h = fullBody ? 158.0 : 132.0;
    final scale = (size.width / _w).clamp(0.0, size.height / h);
    canvas.save();
    canvas.translate(
        (size.width - _w * scale) / 2, (size.height - h * scale) / 2);
    canvas.scale(scale);
    canvas.translate(0, bodyBounce);

    if (sleepPhase != null) _drawZzz(canvas, sleepPhase!);
    if (fullBody) _drawBody(canvas);

    // 头部整体绕下巴 (60,102) 摆动（与原动画层契约一致）。
    canvas.save();
    canvas.translate(60, 102);
    canvas.rotate(bob + pose.tilt * (math.pi / 180));
    canvas.translate(-60, -102);

    _drawPetals(canvas);
    _drawNoteSprout(canvas);
    _drawHead(canvas);
    _drawFace(canvas);
    _drawAccessory(canvas);

    canvas.restore();
    canvas.restore();
  }

  void _drawPetals(Canvas canvas) {
    final petal = Paint()..color = HanaColors.petal;
    final outline = Paint()
      ..color = HanaColors.ink.withValues(alpha: 0.55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;
    canvas.save();
    canvas.translate(60, 27);
    canvas.rotate(earSwing); // 花瓣滞后摆动
    canvas.translate(-60, -27);
    for (var i = 0; i < 5; i++) {
      final a = -math.pi / 2 + i * 2 * math.pi / 5;
      canvas.save();
      canvas.translate(60 + 14 * math.cos(a), 27 + 14 * math.sin(a));
      canvas.rotate(a - math.pi / 2);
      final r = Rect.fromCenter(center: Offset.zero, width: 10, height: 17);
      canvas.drawOval(r, petal);
      canvas.drawOval(r, outline);
      canvas.restore();
    }
    canvas.drawCircle(const Offset(60, 27), 6,
        Paint()..color = HanaColors.petalDeep);
    canvas.restore();
  }

  void _drawNoteSprout(Canvas canvas) {
    final note = Paint()..color = HanaColors.note;
    final stroke = Paint()
      ..color = HanaColors.note
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(const Offset(113, 76), 5, note);
    canvas.drawLine(const Offset(117, 76), const Offset(117, 60), stroke);
    canvas.drawPath(
        Path()
          ..moveTo(117, 60)
          ..quadraticBezierTo(121, 62, 119, 67),
        stroke);
  }

  void _drawHead(Canvas canvas) {
    final cream = Paint()..color = HanaColors.cream;
    final outline = Paint()
      ..color = HanaColors.ink.withValues(alpha: 0.55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;
    canvas.drawCircle(const Offset(60, 62), 40, cream);
    canvas.drawCircle(const Offset(60, 62), 40, outline);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(60, 80), width: 44, height: 26),
        Paint()..color = HanaColors.creamShade.withValues(alpha: 0.45));
    final blush = Paint()..color = HanaColors.blush.withValues(alpha: 0.5);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(36, 72), width: 14, height: 9),
        blush);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(84, 72), width: 14, height: 9),
        blush);
  }

  void _drawFace(Canvas canvas) {
    _drawEye(canvas, 44);
    _drawEye(canvas, 76);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(60, 68), width: 15, height: 11),
        Paint()..color = HanaColors.nose);
    canvas.drawCircle(const Offset(57.5, 65.8), 1.6,
        Paint()..color = Colors.white.withValues(alpha: 0.7));
    _drawMouth(canvas);
  }

  void _drawEye(Canvas canvas, double x) {
    final paint = Paint()..color = HanaColors.ink;
    final stroke = Paint()
      ..color = HanaColors.ink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.4
      ..strokeCap = StrokeCap.round;

    var kind = pose.eyes;
    if (blink > 0.6 && (kind == EyeKind.open || kind == EyeKind.wide)) {
      kind = EyeKind.closed;
    }

    switch (kind) {
      case EyeKind.open || EyeKind.wide:
        final rx = kind == EyeKind.wide ? 8.5 : 7.5;
        final ry = (kind == EyeKind.wide ? 11.5 : 10.0) * (1 - blink * 0.8);
        canvas.drawOval(
            Rect.fromCenter(
                center: Offset(x, 60), width: rx * 2, height: ry * 2),
            paint);
        canvas.drawCircle(Offset(x + rx * 0.4, 60 - ry * 0.45), 2.4,
            Paint()..color = Colors.white);
        canvas.drawCircle(Offset(x - rx * 0.35, 60 + ry * 0.3), 1.1,
            Paint()..color = Colors.white.withValues(alpha: 0.7));
        break;
      case EyeKind.smile:
        canvas.drawPath(
            Path()
              ..moveTo(x - 8, 62)
              ..quadraticBezierTo(x, 53, x + 8, 62),
            stroke);
        break;
      case EyeKind.half || EyeKind.closed:
        final dip = kind == EyeKind.closed ? 6.0 : 5.0;
        canvas.drawPath(
            Path()
              ..moveTo(x - 8, 59)
              ..quadraticBezierTo(x, 59 + dip, x + 8, 59),
            stroke);
        break;
    }
  }

  void _drawMouth(Canvas canvas) {
    final stroke = Paint()
      ..color = HanaColors.ink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.4
      ..strokeCap = StrokeCap.round;

    switch (pose.mouth) {
      case MouthKind.neutral:
        canvas.drawPath(
            Path()
              ..moveTo(53, 81)
              ..quadraticBezierTo(60, 86, 67, 81),
            stroke);
        break;
      case MouthKind.small:
        canvas.drawOval(
            Rect.fromCenter(center: const Offset(60, 84), width: 7, height: 6),
            Paint()..color = HanaColors.ink);
        break;
      case MouthKind.open:
        canvas.drawPath(
            Path()
              ..moveTo(50, 80)
              ..quadraticBezierTo(60, 92, 70, 80)
              ..quadraticBezierTo(60, 86, 50, 80)
              ..close(),
            Paint()..color = HanaColors.ink);
        canvas.drawOval(
            Rect.fromCenter(center: const Offset(60, 86), width: 9, height: 6),
            Paint()..color = HanaColors.tongue);
        break;
      case MouthKind.tongue:
        canvas.drawPath(
            Path()
              ..moveTo(53, 81)
              ..quadraticBezierTo(60, 87, 67, 81),
            stroke);
        final tongue = Path()
          ..moveTo(60, 84)
          ..quadraticBezierTo(57, 84, 57, 89)
          ..arcToPoint(const Offset(63, 89),
              radius: const Radius.circular(3), clockwise: false)
          ..quadraticBezierTo(63, 84, 60, 84)
          ..close();
        canvas.drawPath(tongue, Paint()..color = HanaColors.tongue);
        break;
    }
  }

  void _drawBody(Canvas canvas) {
    final cream = Paint()..color = HanaColors.cream;
    final outline = Paint()
      ..color = HanaColors.ink.withValues(alpha: 0.28)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;
    final body = RRect.fromRectAndRadius(
        Rect.fromCenter(center: const Offset(60, 132), width: 74, height: 48),
        const Radius.circular(24));
    canvas.drawRRect(body, cream);
    canvas.drawRRect(body, outline);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(44, 152), width: 18, height: 12),
        cream);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(76, 152), width: 18, height: 12),
        cream);
  }

  void _drawAccessory(Canvas canvas) {
    switch (accessory) {
      case Accessory.none:
        return;
      case Accessory.bow:
        final pink = Paint()..color = HanaColors.blush;
        final deep = Paint()..color = HanaColors.petalDeep;
        canvas.drawPath(
            Path()
              ..moveTo(78, 26)
              ..quadraticBezierTo(66, 16, 68, 28)
              ..quadraticBezierTo(70, 35, 78, 26)
              ..close(),
            pink);
        canvas.drawPath(
            Path()
              ..moveTo(78, 26)
              ..quadraticBezierTo(90, 14, 90, 26)
              ..quadraticBezierTo(89, 34, 78, 26)
              ..close(),
            pink);
        canvas.drawCircle(const Offset(78, 26), 4, deep);
        break;
      case Accessory.headphones:
        final band = Paint()
          ..color = const Color(0xFF8A6FD1)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round;
        canvas.drawArc(
            Rect.fromCircle(center: const Offset(60, 48), radius: 40),
            3.34, 2.75, false, band);
        final cup = Paint()..color = const Color(0xFF8A6FD1);
        canvas.drawOval(
            Rect.fromCenter(center: const Offset(20, 60), width: 13, height: 20),
            cup);
        canvas.drawOval(
            Rect.fromCenter(
                center: const Offset(100, 60), width: 13, height: 20),
            cup);
        break;
      case Accessory.flower:
        final petal = Paint()..color = const Color(0xFFFFC9DE);
        for (var i = 0; i < 5; i++) {
          final a = i * 2 * math.pi / 5;
          canvas.drawCircle(
              Offset(92 + 6 * math.cos(a), 34 + 6 * math.sin(a)), 5, petal);
        }
        canvas.drawCircle(const Offset(92, 34), 4,
            Paint()..color = const Color(0xFFFFD580));
        break;
      case Accessory.crown:
        final gold = Paint()..color = const Color(0xFFFFD580);
        canvas.drawPath(
            Path()
              ..moveTo(46, 26)
              ..lineTo(48, 14)
              ..lineTo(55, 22)
              ..lineTo(60, 10)
              ..lineTo(65, 22)
              ..lineTo(72, 14)
              ..lineTo(74, 26)
              ..close(),
            gold);
        break;
      case Accessory.catEars:
        final fur = Paint()..color = HanaColors.cream;
        final inner = Paint()..color = HanaColors.blush;
        canvas.drawPath(
            Path()
              ..moveTo(34, 30)
              ..lineTo(38, 12)
              ..lineTo(50, 24)
              ..close(),
            fur);
        canvas.drawPath(
            Path()
              ..moveTo(86, 30)
              ..lineTo(82, 12)
              ..lineTo(70, 24)
              ..close(),
            fur);
        canvas.drawPath(
            Path()
              ..moveTo(38, 27)
              ..lineTo(40, 17)
              ..lineTo(47, 24)
              ..close(),
            inner);
        canvas.drawPath(
            Path()
              ..moveTo(82, 27)
              ..lineTo(80, 17)
              ..lineTo(73, 24)
              ..close(),
            inner);
        break;
    }
  }

  void _drawZzz(Canvas canvas, double phase) {
    void z(String text, Offset base, double fontSize, double offsetPhase) {
      final p = (phase + offsetPhase) % 1.0;
      final tp = TextPainter(
        text: TextSpan(
          text: text,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
            color: HanaColors.ink.withValues(alpha: (1 - p) * 0.8),
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, base + Offset(p * 6, -p * 14));
    }

    z('z', const Offset(88, 24), 13, 0);
    z('Z', const Offset(97, 8), 16, 0.5);
  }

  @override
  bool shouldRepaint(MascotPainter old) =>
      old.pose != pose ||
      old.blink != blink ||
      old.bob != bob ||
      old.earSwing != earSwing ||
      old.bodyBounce != bodyBounce ||
      old.fullBody != fullBody ||
      old.sleepPhase != sleepPhase ||
      old.accessory != accessory;
}
