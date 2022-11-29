import 'package:flutter/material.dart';

class RoundedRectanglePreparing extends StatelessWidget {
  const RoundedRectanglePreparing({Key? key}) : super(key: key);

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
            painter: RoundedRectDraw(),
          ),
        ),
      ),
    );
  }
}

class RoundedRectDraw extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;

    const a = Offset(100, 100);
    const b = Offset(230, 230);
    const radius = Radius.circular(60);
    final rect = Rect.fromPoints(a, b);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
