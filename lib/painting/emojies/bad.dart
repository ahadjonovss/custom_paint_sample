import 'package:flutter/material.dart';

class Bad extends StatelessWidget {
  const Bad({Key? key}) : super(key: key);

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
                Text("Yomon")
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
      ..color = Colors.brown
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final mouthpaint = Paint()
      ..strokeWidth = 10
      ..color = Colors.brown
      ..style = PaintingStyle.stroke;

    final eye = Paint()
      ..color = Colors.brown
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width * 1 / 3, paint);



    //eyes

    final eye1=Path();
    eye1.moveTo(60, 80);
    eye1.arcToPoint(Offset(80, 70),radius: Radius.circular(38),clockwise: false);

    final eye2=Path();
    eye2.moveTo(120, 70);
    eye2.arcToPoint(Offset(140, 80),radius: Radius.circular(38),clockwise: false);

    canvas.drawPath(eye1, mouthpaint);
    canvas.drawPath(eye2, mouthpaint);



    final mouth=Path();

    mouth.moveTo(70, 130);
    mouth.arcToPoint(Offset(130, 130),radius: Radius.circular(38),clockwise: true);

    canvas.drawPath(mouth, mouthpaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
