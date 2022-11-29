import 'dart:ui';

import 'package:flutter/material.dart';

void draw_rect({required Canvas canvas,required Size size, required Color color,required Offset begin,required Offset end}) {
  final paint = Paint()
    ..color = color
    ..strokeWidth = 10..style=PaintingStyle.fill;

  final rect=Rect.fromPoints(begin,end);

  canvas.drawRect(rect, paint);
}