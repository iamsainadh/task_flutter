import 'package:flutter/material.dart';

class SearchScreenClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.0025840, size.height * -0.0055556);
    path.lineTo(size.width * -0.0051680, size.height * 0.9944444);
    path.quadraticBezierTo(size.width * 0.4302067, size.height * 0.9976667,
        size.width * 0.5452196, size.height * 1.0003889);
    path.cubicTo(
        size.width * 0.7097674,
        size.height * 0.9831667,
        size.width * 0.6244186,
        size.height * 0.6722778,
        size.width * 0.8005685,
        size.height * 0.6747778);
    path.cubicTo(
        size.width * 1.0422481,
        size.height * 0.6576111,
        size.width * 1.0027132,
        size.height * 0.7841111,
        size.width * 0.9998966,
        size.height * 0.0077222);
    path.quadraticBezierTo(size.width * 0.7498966, size.height * 0.0032778,
        size.width * 0.5184238, size.height * -0.0036111);
    path.lineTo(size.width * 0.0025840, size.height * -0.0055556);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
  
    return true;
  }
}
