import 'package:flutter/material.dart';

class DrawRectanglePreparing extends StatelessWidget {
  const DrawRectanglePreparing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: RectangleDrawer(),
            ),
          )),
    );
  }
}

class RectangleDrawer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final rect=Rect.fromPoints(
      Offset(40,40),
      Offset(160,160)
    );

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;
}
