import 'package:flutter/material.dart';

class Normally extends StatelessWidget {
  const Normally({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: CustomPaint(
                    painter: VeryGoodPainter(),
                  ),
                ),
                Text("O'rtacha")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VeryGoodPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final mouthpaint = Paint()
      ..strokeWidth = 10
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke;

    final eye = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width * 1 / 3, paint);

    canvas.drawCircle(Offset(70, 80), 10, eye); //eye
    canvas.drawCircle(Offset(130, 80), 10, eye); //eye

    final mouth=Path();

    mouth.moveTo(70, 130);
    mouth.arcToPoint(Offset(130, 130),radius: Radius.circular(38),clockwise: true);

    canvas.drawPath(mouth, mouthpaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
