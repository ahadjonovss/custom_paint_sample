import 'package:flutter/material.dart';

class DrawTrianglePreparing extends StatelessWidget {
  const DrawTrianglePreparing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: CustomPaint(
            painter: DrawTriangle(),
          ),
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final path=Path();
    path.moveTo(150, 10);
    path.lineTo(50, 200);
    path.lineTo(250, 200);
    path.lineTo(150, 10);
    path.close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
