import 'dart:math' as math;
import 'package:flutter/material.dart';

Positioned star(num top,int left){
  return Positioned(
    top: top*10,
    left: left*10,
    child: ClipPath(
      clipper: StarClipper(),
      child: Container(
        color: Colors.white,
        width: 16,
        height: 16,
      ),
    ),
  );
}

class StarClipper extends CustomClipper<Path> {
  int STAR_POINTS = 5;
  @override
  Path getClip(Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var path = Path();

    var radius = size.width / 2;
    var inner = radius / 2;
    var rotation = math.pi / 2 * 3;
    var step = math.pi / STAR_POINTS;

    path.lineTo(centerX, centerY - radius);

    for (var i = 0; i < STAR_POINTS; i++) {
      var x = centerX + math.cos(rotation) * radius;
      var y = centerY + math.sin(rotation) * radius;
      path.lineTo(x, y);
      rotation += step;

      x = centerX + math.cos(rotation) * inner;
      y = centerY + math.sin(rotation) * inner;
      path.lineTo(x, y);
      rotation += step;
    }

    path.lineTo(centerX, centerY - radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}