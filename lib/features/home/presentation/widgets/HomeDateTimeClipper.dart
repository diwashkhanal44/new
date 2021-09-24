import 'package:flutter/widgets.dart';

class HomeDateTimeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height / 3)
      ..lineTo(0, size.height / 3)
      ..lineTo(0, 0)
      ..moveTo(size.width, size.height / 3)
      ..lineTo(size.width, size.height)
      ..quadraticBezierTo(size.width * .7, size.height, 0, size.height / 3)
      ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
