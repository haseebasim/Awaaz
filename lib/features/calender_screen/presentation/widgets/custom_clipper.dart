import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This variable define for better understanding you can direct specify value in quadraticBezierTo method
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);
    var radius = 20.0;
     var path = Path();
    path.lineTo(0, size.height-50);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
