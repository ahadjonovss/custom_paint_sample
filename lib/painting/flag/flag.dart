import 'package:custom_paint_sample/painting/flag/widgets/colors.dart';
import 'package:custom_paint_sample/painting/flag/widgets/moon.dart';
import 'package:custom_paint_sample/painting/flag/widgets/star.dart';
import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: CustomPaint(
                painter: DrawFlag(),
              ),
            ),
            star(1.2, 10),
            star(1.2, 12),
            star(1.2, 14),
            star(3.4, 8),
            star(3.4, 10),
            star(3.4, 12),
            star(3.4, 14),
            star(5.8, 6),
            star(5.8, 8),
            star(5.8, 10),
            star(5.8, 12),
            star(5.8, 14),
          ],
        ),
      ),
    );
  }
}

class DrawFlag extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //background
    draw_rect(
      canvas: canvas,
      size: size,
      color: Colors.blue,
      begin: Offset(0, 0),
      end: Offset(size.width, 90),
    );

    draw_rect(
      canvas: canvas,
      size: size,
      color: Colors.red,
      begin: Offset(0, 90),
      end: Offset(size.width, 100),
    );
    draw_rect(
      canvas: canvas,
      size: size,
      color: Colors.red,
      begin: Offset(0, 190),
      end: Offset(size.width, 200),
    );
    draw_rect(
      canvas: canvas,
      size: size,
      color: Colors.lightGreen,
      begin: Offset(0, 200),
      end: Offset(size.width, 290),
    );

    //moon and stars
    draw_moon(canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
