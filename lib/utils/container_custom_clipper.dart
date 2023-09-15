import 'package:flutter/material.dart';

class ContainerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1700000, size.height * 0.5014286);
    path_0.quadraticBezierTo(size.width * 0.1520833, size.height * 0.3510714,
        size.width * 0.2083333, size.height * 0.3542857);
    path_0.cubicTo(
        size.width * 0.2339583,
        size.height * 0.3546429,
        size.width * 0.2852083,
        size.height * 0.3553571,
        size.width * 0.3108333,
        size.height * 0.3557143);
    path_0.quadraticBezierTo(size.width * 0.3772917, size.height * 0.3378571,
        size.width * 0.3700000, size.height * 0.2185714);

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
