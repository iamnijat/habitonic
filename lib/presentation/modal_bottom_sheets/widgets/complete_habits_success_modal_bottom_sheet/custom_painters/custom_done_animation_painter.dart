import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

import '../../../../../config/constants/palette.dart';

class CustomDoneAnimationPainter extends CustomPainter {
  CustomDoneAnimationPainter({required this.animation})
      : super(repaint: animation);

  final Animation<dynamic> animation;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppPalette.mainPurpleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7;

    final circlePath = Path();
    circlePath.addArc(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          height: size.height,
          width: size.width,
        ),
        vector.radians(-90.0),
        vector.radians(360.0 * animation.value));

    final leftLine = size.width * 0.2;
    final rightLine = size.width * 0.3;

    final leftPercent = animation.value > 0.5 ? 1.0 : animation.value / 8.5;
    final rightPercent =
        animation.value < 0.5 ? 0.0 : (animation.value - 0.5) / 0.5;

    canvas.save();
    canvas.translate(size.width / 3, size.height / 2);
    canvas.rotate(vector.radians(-45));

    canvas.drawLine(Offset.zero, Offset(0.0, leftLine * leftPercent), paint);
    canvas.drawLine(Offset(0.0, leftLine),
        Offset(rightLine * rightPercent, leftLine), paint);
    canvas.restore();
    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
