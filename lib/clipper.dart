import 'package:flutter/material.dart';

class FirstClipper extends CustomClipper<Path> {
  final factor;
  final dhfactor;
  FirstClipper({this.factor,this.dhfactor});
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0, factor * 1.5);
    path.lineTo(0, size.height - factor);
    path.quadraticBezierTo(0, size.height, factor, size.height);
    path.lineTo(size.width - factor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - factor);
    path.lineTo(size.width, dhfactor + factor);
    path.quadraticBezierTo(size.width, dhfactor,
        size.width - (factor * 1.5), dhfactor*0.8);
    path.lineTo(factor*2, factor);
    path.quadraticBezierTo(0, 0, 0, factor * 1.5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
