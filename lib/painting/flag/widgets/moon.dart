import 'dart:ui';

import 'package:flutter/material.dart';

void draw_moon(canvas){
  final paint = Paint()
    ..strokeWidth = 2
    ..color = Colors.white
    ..style = PaintingStyle.fill;

  final moon = Path();

  moon.moveTo(50, 10);
  moon.arcToPoint(
    clockwise: false,
    Offset(50, 80),
    radius: Radius.circular(15),
  );
  moon.arcToPoint(
      Offset(50, 10),
      radius: Radius.circular(40)
  );

  canvas.drawPath(moon, paint);
}