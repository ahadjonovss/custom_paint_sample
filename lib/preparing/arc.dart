import 'package:flutter/material.dart';

class DrawArcPreparing extends StatelessWidget {
  const DrawArcPreparing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
          child: CustomPaint(
            painter: DrawArc(),
          ),
        ),
      ),
    );
  }
}

class DrawArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    final arc1 = Path();
    arc1.moveTo(100, 100);
    arc1.arcToPoint(Offset(200, 100), radius: Radius.circular(80));

    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
