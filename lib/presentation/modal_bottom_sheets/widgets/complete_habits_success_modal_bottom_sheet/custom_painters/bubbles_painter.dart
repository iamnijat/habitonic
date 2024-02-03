import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../../../config/constants/palette.dart';

class BubblesPainter extends CustomPainter {
  final Animation<double>? animation;
  final List<Bubble> bubbles;

  BubblesPainter(this.animation, this.bubbles) : super(repaint: animation);
  @override
  void paint(Canvas canvas, Size size) {
    for (Bubble bubble in bubbles) {
      final offset = Offset(
        size.width / 2 + bubble.direction * animation!.value,
        size.height * 1.2 * (1 - animation!.value) -
            bubble.speed * animation!.value +
            bubble.initialPosition * (1 - animation!.value),
      );
      canvas.drawCircle(offset, bubble.size, Paint()..color = bubble.color);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Bubble {
  final Color color;
  final double direction;
  final double speed;
  final double size;
  final double initialPosition;

  Bubble(
      {required this.color,
      required this.direction,
      required this.speed,
      required this.size,
      required this.initialPosition});
}

class BubblesGenerator {
  static List<Bubble> get bubbles {
    final bubbles = List<Bubble>.generate(500, (index) {
      final size = math.Random().nextInt(20) + 5.0;
      final speed = math.Random().nextInt(50) + 1.0;
      final directionRandom = math.Random().nextBool();
      final direction =
          math.Random().nextInt(250) * (directionRandom ? 1.0 : -1.0);
      const color = AppPalette.mainPurpleColor;
      return Bubble(
        color: color,
        direction: direction,
        speed: speed,
        size: size,
        initialPosition: index * 10.0,
      );
    });
    return bubbles;
  }
}
