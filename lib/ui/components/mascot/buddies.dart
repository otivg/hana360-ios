import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'mascot_painter.dart' show HanaColors;

/// 花音 · HANA 音灵家族伙伴。所有伙伴共享：32×32 设计空间、基线贴底、
/// 面向右、phase 0..1 循环。类名沿用原「槽位名」以便零改动替换：
/// Parrot=鸟位→青羽、Cat=猫位→月眠、Duck=鸭位→泡泡、Rabbit=跳跃位→果冻。
abstract class BuddyPainter extends CustomPainter {
  const BuddyPainter(this.phase);

  final double phase;

  @override
  bool shouldRepaint(covariant BuddyPainter old) => old.phase != phase;
}

Paint _buddyLine() => Paint()
  ..color = HanaColors.nose.withValues(alpha: 0.55)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 1.1;

/// 弹跳果冻团子（plus 分支下载条）。[phase] 驱动跳跃：下蹲→弹起→落地。
class RabbitPainter extends BuddyPainter {
  RabbitPainter(super.phase,
      {this.color = const Color(0xFFFDF0F4), this.arc = 1.0});

  final Color color;
  final double arc;

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.width / 32.0;
    canvas.save();
    canvas.translate((size.width - 32 * s) / 2, size.height - 32 * s);
    canvas.scale(s);

    final hop = math.sin(phase * math.pi);
    final lift = hop * 9 * arc;
    final squash = 1 - hop * 0.12;

    final body = Paint()..color = color;
    final line = _buddyLine();

    canvas.translate(0, -lift);
    canvas.save();
    canvas.translate(16, 26);
    canvas.scale(1, squash);
    canvas.translate(-16, -26);

    final r = Rect.fromCenter(center: const Offset(16, 20), width: 18, height: 16);
    canvas.drawOval(r, body);
    canvas.drawOval(r, line);
    canvas.drawCircle(const Offset(22, 15), 5.5, body);
    canvas.drawCircle(const Offset(22, 15), 5.5, line);
    canvas.drawCircle(const Offset(24, 14), 1.2, Paint()..color = HanaColors.ink);
    canvas.drawCircle(const Offset(23, 16), 1.0,
        Paint()..color = HanaColors.blush.withValues(alpha: 0.7));

    canvas.restore();
    canvas.restore();
  }
}

/// 下载条上的弹跳果冻（plus 分支专用，行为状态机与原来一致）。
class DownloadRabbit extends StatefulWidget {
  const DownloadRabbit({super.key, required this.progress, this.size = 22});

  final double? progress;
  final double size;

  @override
  State<DownloadRabbit> createState() => _DownloadRabbitState();
}

class _DownloadRabbitState extends State<DownloadRabbit> {
  late final Ticker _ticker;
  final _rng = math.Random();
  Duration _last = Duration.zero;

  double _w = 0;
  double _x = 0;
  double _goalX = 0;
  bool _hopping = false;
  double _hopT = 0;
  double _hopDur = 0.34;
  double _fromX = 0, _toX = 0, _arc = 1;
  double _pause = 0.5;
  bool _faceLeft = false;
  bool _started = false;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_tick)..start();
  }

  double get _maxX => math.max(0, _w - widget.size);
  double get _frontX =>
      ((widget.progress ?? 0.5).clamp(0.0, 1.0) * _w - widget.size / 2)
          .clamp(0.0, _maxX);

  void _tick(Duration elapsed) {
    final dt = ((elapsed - _last).inMicroseconds / 1e6).clamp(0.0, 0.05);
    _last = elapsed;
    if (!_started) return;

    if (_hopping) {
      _hopT += dt / _hopDur;
      if (_hopT >= 1) {
        _hopT = 0;
        _hopping = false;
        _x = _toX;
        _pause = (_x - _goalX).abs() < 3
            ? 0.5 + _rng.nextDouble() * 1.6
            : 0.05 + _rng.nextDouble() * 0.1;
      } else {
        final e = Curves.easeInOut.transform(_hopT);
        _x = _fromX + (_toX - _fromX) * e;
      }
    } else {
      _pause -= dt;
      if (_pause <= 0) _startHop();
    }
    setState(() {});
  }

  void _startHop() {
    if ((_x - _goalX).abs() < 3) {
      final r = _rng.nextDouble();
      _goalX = r < 0.28
          ? 0
          : r < 0.58
              ? _frontX
              : _rng.nextDouble() * _maxX;
    }
    final maxHop = _w * (0.16 + _rng.nextDouble() * 0.14);
    final dir = _goalX >= _x ? 1.0 : -1.0;
    final dist = math.min(maxHop, (_goalX - _x).abs());
    _fromX = _x;
    _toX = (_x + dir * dist).clamp(0.0, _maxX);
    _faceLeft = dir < 0;
    _hopping = true;
    _hopT = 0;
    final norm = _w == 0 ? 0.0 : dist / _w;
    _hopDur = 0.28 + norm * 0.5;
    _arc = 1.0 + norm * 2.2;
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      _w = c.maxWidth;
      if (!_started && _w > 0) {
        _x = _frontX;
        _goalX = _x;
        _started = true;
      }
      final jelly = SizedBox(
        width: widget.size,
        height: widget.size,
        child: CustomPaint(painter: RabbitPainter(_hopT, arc: _arc)),
      );
      return SizedBox(
        height: widget.size + 4,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: _x.clamp(0.0, _maxX),
              bottom: 0,
              child: Transform(
                alignment: Alignment.center,
                transform:
                    Matrix4.identity()..scale(_faceLeft ? -1.0 : 1.0, 1.0),
                child: jelly,
              ),
            ),
          ],
        ),
      );
    });
  }
}

/// 地面伙伴宿主：随机游走 + 休息；移动时按距离推进步态相位，
/// 休息时按时间推进待机相位。[swayAmp] 让整只竖向正弦漂浮。
class RoamingBuddy extends StatefulWidget {
  const RoamingBuddy({
    super.key,
    required this.size,
    required this.painterBuilder,
    this.speed = 40,
    this.stride = 14,
    this.idlePeriod = 2.2,
    this.pauseMin = 1.5,
    this.pauseMax = 4.5,
    this.swayAmp = 0,
    this.swayPeriod = 3.0,
  });

  final double size;
  final BuddyPainter Function(double phase, bool moving) painterBuilder;
  final double speed;
  final double stride;
  final double idlePeriod;
  final double pauseMin, pauseMax;
  final double swayAmp, swayPeriod;

  @override
  State<RoamingBuddy> createState() => _RoamingBuddyState();
}

class _RoamingBuddyState extends State<RoamingBuddy> {
  late final Ticker _ticker;
  final _rng = math.Random();
  Duration _last = Duration.zero;

  double _w = 0;
  double _x = 0, _goal = 0;
  bool _moving = false, _faceLeft = false, _started = false;
  double _pause = 1.0;
  double _gait = 0;
  double _time = 0;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_tick)..start();
  }

  double get _maxX => math.max(0, _w - widget.size);

  void _tick(Duration elapsed) {
    final dt = ((elapsed - _last).inMicroseconds / 1e6).clamp(0.0, 0.05);
    _last = elapsed;
    if (!_started) return;
    _time += dt;

    if (_moving) {
      final step = widget.speed * dt;
      final dir = _goal >= _x ? 1.0 : -1.0;
      _x += dir * step;
      _gait += step / widget.stride;
      if ((_goal - _x).abs() <= step) {
        _x = _goal;
        _moving = false;
        _pause = widget.pauseMin +
            _rng.nextDouble() * (widget.pauseMax - widget.pauseMin);
      }
    } else {
      _pause -= dt;
      if (_pause <= 0 && _maxX > 8) {
        var goal = _rng.nextDouble() * _maxX;
        if ((goal - _x).abs() < _maxX * 0.2) {
          goal = _x > _maxX / 2 ? _x - _maxX * 0.4 : _x + _maxX * 0.4;
        }
        _goal = goal.clamp(0.0, _maxX);
        _faceLeft = _goal < _x;
        _moving = true;
      }
    }
    setState(() {});
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      _w = c.maxWidth;
      if (!_started && _w > 0) {
        _x = _rng.nextDouble() * _maxX;
        _goal = _x;
        _pause = 0.3 + _rng.nextDouble() * 1.5;
        _started = true;
      }
      final phase =
          _moving ? _gait % 1.0 : (_time / widget.idlePeriod) % 1.0;
      final sway = widget.swayAmp *
          math.sin(_time * 2 * math.pi / widget.swayPeriod);
      return SizedBox(
        height: widget.size + widget.swayAmp * 2,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: _x.clamp(0.0, _maxX),
              bottom: widget.swayAmp + sway,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..scale(_faceLeft ? -1.0 : 1.0, 1.0),
                child: SizedBox(
                  width: widget.size,
                  height: widget.size,
                  child:
                      CustomPaint(painter: widget.painterBuilder(phase, _moving)),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

/// 青羽 —— 音符尾巴小圆鸟（鹦鹉位）。
class ParrotPainter extends BuddyPainter {
  ParrotPainter(super.phase, {this.moving = false});

  final bool moving;

  static const _body = Color(0xFF9ED9A4);
  static const _wing = Color(0xFF63BE8C);
  static const _belly = Color(0xFFE8F6E6);
  static const _beak = Color(0xFFF2A65A);

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.width / 32.0;
    canvas.save();
    canvas.translate((size.width - 32 * s) / 2, size.height - 32 * s);
    canvas.scale(s);

    final bob = moving ? 0.0 : math.sin(phase * 2 * math.pi) * 0.5 + 0.5;
    final flap = moving ? math.sin(phase * math.pi) * 0.5 : 0.0;
    final line = _buddyLine();
    final body = Paint()..color = _body;

    // 音符尾巴（左）
    final note = Paint()..color = _wing;
    canvas.drawCircle(const Offset(6, 22), 3, note);
    canvas.drawLine(const Offset(8, 22), const Offset(8, 14),
        note..style = PaintingStyle.stroke..strokeWidth = 1.6);

    // 脚
    final feet = Paint()..color = const Color(0xFFE0A34E);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(13.5, 29.6), width: 3.2, height: 1.7),
        feet);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(17.5, 29.6), width: 3.2, height: 1.7),
        feet);

    // 身体
    final bodyRect =
        Rect.fromCenter(center: const Offset(15.5, 21.5), width: 13, height: 15);
    canvas.drawOval(bodyRect, body);
    canvas.drawOval(bodyRect, line);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(17, 23.5), width: 7.5, height: 9),
        Paint()..color = _belly);

    // 翅膀
    canvas.save();
    canvas.translate(12.5, 21);
    canvas.rotate(-0.25 - flap);
    final wingRect =
        Rect.fromCenter(center: Offset.zero, width: 6.5, height: 10);
    canvas.drawOval(wingRect, Paint()..color = _wing);
    canvas.drawOval(wingRect, line);
    canvas.restore();

    // 头
    canvas.save();
    canvas.translate(0, bob * 1.6);
    canvas.drawCircle(const Offset(20, 11.5), 6, body);
    canvas.drawCircle(const Offset(20, 11.5), 6, line);
    canvas.drawCircle(const Offset(22.3, 10.5), 2.6, Paint()..color = Colors.white);
    canvas.drawCircle(const Offset(22.6, 10.6), 1.3, Paint()..color = HanaColors.ink);
    final beak = Path()
      ..moveTo(25.3, 8.8)
      ..quadraticBezierTo(29.3, 10, 26.6, 13.6)
      ..quadraticBezierTo(25.6, 11.5, 25.3, 8.8)
      ..close();
    canvas.drawPath(beak, Paint()..color = _beak);
    canvas.drawPath(beak, line);
    canvas.drawCircle(const Offset(24.6, 13.6), 1.3,
        Paint()..color = HanaColors.blush.withValues(alpha: 0.6));
    canvas.restore();

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant ParrotPainter old) =>
      old.phase != phase || old.moving != moving;
}

/// 月眠 —— 月牙睡帽团子（猫位）。睡眠时呼吸 + 上浮 zz，播放时醒。
class CatPainter extends BuddyPainter {
  CatPainter(super.phase, {this.sleeping = true});

  final bool sleeping;

  static const _fur = Color(0xFFC7BAD4);
  static const _cream = Color(0xFFF7F1E9);

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.width / 32.0;
    canvas.save();
    canvas.translate((size.width - 32 * s) / 2, size.height - 32 * s);
    canvas.scale(s);

    final wave = math.sin(phase * 2 * math.pi);
    final line = _buddyLine();
    final fur = Paint()..color = _fur;

    // 月牙睡帽（画在头后，头会遮住下半部形成月牙）
    canvas.drawCircle(const Offset(16, 8), 7.5, Paint()..color = const Color(0xFFF8E49B));

    // 身体
    canvas.save();
    if (sleeping) {
      canvas.translate(16, 30);
      canvas.scale(1, 1 + wave * 0.025);
      canvas.translate(-16, -30);
    }
    final body = Rect.fromCenter(center: const Offset(16, 22), width: 22, height: 18);
    canvas.drawOval(body, fur);
    canvas.drawOval(body, line);
    canvas.restore();

    // 前爪
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(19.5, 29.4), width: 4, height: 2.6),
        Paint()..color = _cream);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(24, 29.4), width: 4, height: 2.6),
        Paint()..color = _cream);

    // 头
    canvas.drawCircle(const Offset(22.5, 16.5), 6.5, fur);
    canvas.drawCircle(const Offset(22.5, 16.5), 6.5, line);

    // 脸
    final eye = Paint()
      ..color = HanaColors.ink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..strokeCap = StrokeCap.round;
    if (sleeping) {
      canvas.drawPath(
          Path()
            ..moveTo(19.2, 16)
            ..quadraticBezierTo(20.3, 17.2, 21.4, 16),
          eye);
      canvas.drawPath(
          Path()
            ..moveTo(23.8, 16)
            ..quadraticBezierTo(24.9, 17.2, 26, 16),
          eye);
    } else {
      canvas.drawCircle(const Offset(20.3, 16), 1.4, Paint()..color = HanaColors.ink);
      canvas.drawCircle(const Offset(24.9, 16), 1.4, Paint()..color = HanaColors.ink);
      canvas.drawCircle(const Offset(20.7, 15.6), 0.45, Paint()..color = Colors.white);
      canvas.drawCircle(const Offset(25.3, 15.6), 0.45, Paint()..color = Colors.white);
    }
    canvas.drawPath(
        Path()
          ..moveTo(21.8, 18.2)
          ..lineTo(23.2, 18.2)
          ..lineTo(22.5, 19.2)
          ..close(),
        Paint()..color = HanaColors.blush);
    canvas.drawCircle(const Offset(26, 18.8), 1.3,
        Paint()..color = HanaColors.blush.withValues(alpha: 0.55));

    if (sleeping) {
      final t = phase;
      final alpha = math.sin(t * 2 * math.pi - math.pi / 2) * 0.5 + 0.5;
      final zPaint = Paint()
        ..color = _fur.withValues(alpha: alpha * 0.85)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2
        ..strokeCap = StrokeCap.round;
      void z(Offset c, double zs) {
        canvas.drawPath(
            Path()
              ..moveTo(c.dx - zs, c.dy - zs)
              ..lineTo(c.dx + zs, c.dy - zs)
              ..lineTo(c.dx - zs, c.dy + zs)
              ..lineTo(c.dx + zs, c.dy + zs),
            zPaint);
      }

      final rise = t * 2.2;
      z(Offset(28.2, 8.5 - rise), 1.5);
      z(Offset(30.6, 4.5 - rise), 1.0);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CatPainter old) =>
      old.phase != phase || old.sleeping != sleeping;
}

/// 月眠的 Ticker 宿主（睡眠呼吸 / 醒着摇摆）。
class CatBuddy extends StatefulWidget {
  const CatBuddy({super.key, required this.sleeping, this.size = 26});

  final bool sleeping;
  final double size;

  @override
  State<CatBuddy> createState() => _CatBuddyState();
}

class _CatBuddyState extends State<CatBuddy> {
  late final Ticker _ticker;
  Duration _last = Duration.zero;
  double _phase = 0;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_tick)..start();
  }

  void _tick(Duration elapsed) {
    final dt = ((elapsed - _last).inMicroseconds / 1e6).clamp(0.0, 0.05);
    _last = elapsed;
    _phase += dt / (widget.sleeping ? 3.4 : 1.5);
    setState(() {});
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: CustomPaint(
          painter: CatPainter(_phase % 1.0, sleeping: widget.sleeping)),
    );
  }
}

/// 泡泡 —— 弹跳水滴团子（鸭位）。
class DuckPainter extends BuddyPainter {
  DuckPainter(super.phase, {this.moving = false});

  final bool moving;

  static const _body = Color(0xFFF8E49B);
  static const _wing = Color(0xFFEECB6A);
  static const _cream = Color(0xFFFDF7E4);
  static const _bill = Color(0xFFF0A050);

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.width / 32.0;
    canvas.save();
    canvas.translate((size.width - 32 * s) / 2, size.height - 32 * s);
    canvas.scale(s);

    final wave = math.sin(phase * 2 * math.pi);
    final line = _buddyLine();
    final body = Paint()..color = _body;

    // 脚
    final feetPaint = Paint()..color = _bill;
    final lLift = moving ? math.max(0.0, wave) * 2.2 : 0.0;
    final rLift = moving ? math.max(0.0, -wave) * 2.2 : 0.0;
    canvas.drawOval(
        Rect.fromCenter(center: Offset(13.4, 30 - lLift), width: 5, height: 2.2),
        feetPaint);
    canvas.drawOval(
        Rect.fromCenter(center: Offset(18.8, 30 - rLift), width: 5, height: 2.2),
        feetPaint);

    // 摇动
    canvas.translate(15, 30);
    canvas.rotate(moving ? wave * 0.09 : wave * 0.02);
    canvas.translate(-15, -30);

    // 尾巴
    canvas.save();
    if (!moving) {
      canvas.translate(8, 21);
      canvas.rotate(math.sin(phase * 4 * math.pi) * 0.12);
      canvas.translate(-8, -21);
    }
    final tail = Path()
      ..moveTo(6.5, 22)
      ..quadraticBezierTo(3.8, 19.5, 4.6, 17.2)
      ..quadraticBezierTo(7, 19, 8.6, 20.6)
      ..close();
    canvas.drawPath(tail, body);
    canvas.drawPath(tail, line);
    canvas.restore();

    // 身体 + 肚皮 + 翅膀
    final bodyRect =
        Rect.fromCenter(center: const Offset(14.5, 23.2), width: 17.5, height: 11.5);
    canvas.drawOval(bodyRect, body);
    canvas.drawOval(bodyRect, line);
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(16, 26), width: 9.5, height: 6),
        Paint()..color = _cream);
    canvas.save();
    canvas.translate(12.8, 22.8);
    canvas.rotate(-0.15);
    final wingRect =
        Rect.fromCenter(center: Offset.zero, width: 8.5, height: 6.4);
    canvas.drawOval(wingRect, Paint()..color = _wing);
    canvas.drawOval(wingRect, line);
    canvas.restore();

    // 头
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(20.5, 17.5), width: 7, height: 9),
        body);
    canvas.drawCircle(const Offset(23, 12.6), 5.6, body);
    canvas.drawCircle(const Offset(23, 12.6), 5.6, line);

    // 嘴
    canvas.save();
    canvas.translate(28.4, 13.2);
    canvas.rotate(0.06);
    final upper = Rect.fromCenter(center: Offset.zero, width: 6, height: 2.8);
    canvas.drawOval(upper, Paint()..color = _bill);
    canvas.drawOval(upper, line);
    canvas.restore();
    canvas.drawOval(
        Rect.fromCenter(center: const Offset(27.9, 14.9), width: 4.2, height: 1.9),
        Paint()..color = _bill);

    // 眼 + 腮红
    canvas.drawCircle(const Offset(24.6, 10.9), 1.35, Paint()..color = HanaColors.ink);
    canvas.drawCircle(const Offset(25, 10.5), 0.45, Paint()..color = Colors.white);
    canvas.drawCircle(const Offset(25.6, 14), 1.4,
        Paint()..color = HanaColors.blush.withValues(alpha: 0.55));

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant DuckPainter old) =>
      old.phase != phase || old.moving != moving;
}

class HeaderParrot extends StatelessWidget {
  const HeaderParrot({super.key, this.size = 20});

  final double size;

  @override
  Widget build(BuildContext context) {
    return RoamingBuddy(
      size: size,
      speed: 55,
      stride: 12,
      idlePeriod: 1.9,
      pauseMin: 2.5,
      pauseMax: 7,
      painterBuilder: (p, m) => ParrotPainter(p, moving: m),
    );
  }
}

class PlaylistsDuck extends StatelessWidget {
  const PlaylistsDuck({super.key, this.size = 23});

  final double size;

  @override
  Widget build(BuildContext context) {
    return RoamingBuddy(
      size: size,
      speed: 24,
      stride: 15,
      idlePeriod: 2.4,
      pauseMin: 1.8,
      pauseMax: 5,
      painterBuilder: (p, m) => DuckPainter(p, moving: m),
    );
  }
}

/// 星尘 —— 四角星辉（萤火虫位开关行预览）。
class FireflyPreviewPainter extends BuddyPainter {
  FireflyPreviewPainter(super.phase);

  Path _star(Offset c, double r) => Path()
    ..moveTo(c.dx, c.dy - r)
    ..quadraticBezierTo(c.dx, c.dy, c.dx + r, c.dy)
    ..quadraticBezierTo(c.dx, c.dy, c.dx, c.dy + r)
    ..quadraticBezierTo(c.dx, c.dy, c.dx - r, c.dy)
    ..quadraticBezierTo(c.dx, c.dy, c.dx, c.dy - r)
    ..close();

  @override
  void paint(Canvas canvas, Size size) {
    final glow = Paint()..color = const Color(0xFFE8F0A8);
    final core = Paint()..color = const Color(0xFFF7F4C5);
    for (final (c, r, a) in [
      (Offset(size.width * 0.3, size.height * 0.35), 4.0, 1.0),
      (Offset(size.width * 0.68, size.height * 0.6), 3.0, 0.7),
      (Offset(size.width * 0.5, size.height * 0.82), 2.4, 0.45),
    ]) {
      canvas.drawPath(_star(c, r * 1.8),
          glow..color = const Color(0xFFE8F0A8).withValues(alpha: 0.22 * a));
      canvas.drawPath(_star(c, r),
          core..color = const Color(0xFFF7F4C5).withValues(alpha: 0.9 * a));
    }
  }
}
