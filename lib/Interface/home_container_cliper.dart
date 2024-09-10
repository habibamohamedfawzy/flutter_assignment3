import 'package:flutter/cupertino.dart';

class HomeContainerCliper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0,size.height );
    path.quadraticBezierTo(
        size.width * 0.01, size.height-20, size.width * 0.2, size.height);
    path.quadraticBezierTo(
        size.width * 0.4, size.height, size.width * 0.45, size.height-30);
    path.quadraticBezierTo(
        size.width * 0.5, size.height-60, size.width * 0.6, size.height);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width * 0.87, size.height-50);
    path.quadraticBezierTo(
        size.width * 0.99, size.height-30, size.width * 1, size.height);
    path.lineTo(size.width, 0);
    return path;
  }
}