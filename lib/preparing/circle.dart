import 'package:flutter/material.dart';

class DrawCirclePreparing extends StatelessWidget {
  const DrawCirclePreparing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: CustomPaint(
            painter: DrawCircle(),
          ),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        Offset(size.width/2,size.height/2),
        size.width*1/3,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
