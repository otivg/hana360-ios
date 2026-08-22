import 'dart:math';
import 'package:flutter/material.dart';

import '../components/mascot/mascot_painter.dart';

/// 花音 · HANA 音灵家族启动页。
/// 粉色渐变背景 + 花音 Hanon 头部脉动 + 进入按钮（去 Baseus 狮子 Logo）。
/// NOTE: 启动页在 MaterialApp 之外 (main.dart _SplashGate 只包 Directionality),
/// 不能调用 AppLocalizations (无 Localizations 祖先会白屏) — 按钮为品牌名,
/// 保持硬编码即可。
class T360Splash extends StatefulWidget {
  final VoidCallback onEnter;
  const T360Splash({super.key, required this.onEnter});

  @override
  State<T360Splash> createState() => _T360SplashState();
}

class _T360SplashState extends State<T360Splash>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat(reverse: true);
    _pulse = Tween(begin: 0.92, end: 1.08).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final rng = Random(42);

    return Scaffold(
      backgroundColor: HanaColors.petal,
      body: Stack(
        children: [
          // 花音粉渐变背景
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0, -0.15),
                  radius: 1.2,
                  colors: [Color(0xFFFFE3EC), Color(0xFFFBD3DF), Color(0xFFF4A7B9)],
                  stops: [0.0, 0.55, 1.0],
                ),
              ),
            ),
          ),
          // 星尘粒子
          ...List.generate(35, (i) {
            final x = (rng.nextDouble() * 0.9 + 0.05) * size.width;
            final y = (rng.nextDouble() * 0.7 + 0.05) * size.height;
            return Positioned(
              left: x, top: y,
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(milliseconds: 2400),
                builder: (c, v, _) {
                  final op = v < 0.5 ? v * 2 : (1 - v) * 2;
                  return Opacity(
                    opacity: op,
                    child: Transform.scale(
                      scale: 0.6 + v * 0.8,
                      child: Container(
                        width: 4, height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }),
          // 花音 Hanon 头部 (脉动)
          Center(
            child: AnimatedBuilder(
              animation: _pulse,
              builder: (c, _) => Transform.scale(
                scale: _pulse.value,
                child: SizedBox(
                  width: min(size.width * 0.5, 220),
                  height: min(size.width * 0.5, 220) * (132 / 120),
                  child: CustomPaint(
                    painter: MascotPainter(
                      pose: const MascotPose(
                        eyes: EyeKind.open,
                        brow: BrowKind.none,
                        mouth: MouthKind.neutral,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // 进入按钮
          Positioned(
            bottom: size.height * 0.22,
            left: size.width * 0.12, right: size.width * 0.12,
            child: GestureDetector(
              onTap: widget.onEnter,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Center(
                  child: Text('Hana360 · 花音',
                    style: TextStyle(
                      color: Color(0xFFE8829B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
