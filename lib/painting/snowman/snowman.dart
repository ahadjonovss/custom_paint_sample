import 'package:flutter/material.dart';

class Snowman extends StatelessWidget {
  const Snowman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: CustomPaint(
            painter: SnowmanPainter(),
          ),
        ),
      ),
    );
  }
}

class SnowmanPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //body
    final circle = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final circleinside = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, 240), size.width * 1 / 6, circle);
    canvas.drawCircle(Offset(size.width / 2, 380), size.width * 1 / 4, circle);
    canvas.drawCircle(Offset(size.width / 2, 560), size.width * 1 / 3, circle);

    canvas.drawCircle(Offset(size.width / 2, 240), size.width * 1 / 6, circleinside);
    canvas.drawCircle(Offset(size.width / 2, 380), size.width * 1 / 4, circleinside);
    canvas.drawCircle(Offset(size.width / 2, 560), size.width * 1 / 3, circleinside);

    final eye = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(225, 220), 10, eye); //eye
    canvas.drawCircle(Offset(165, 220), 10, eye); //eye

    canvas.drawCircle(Offset(size.width / 2, 320), 10, eye); //tugmacha
    canvas.drawCircle(Offset(size.width / 2, 360), 10, eye); //tugmacha
    canvas.drawCircle(Offset(size.width / 2, 400), 10, eye); //tugmacha


    //nose
    final nose = Paint()
      ..color = Colors.orange
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, 240), size.width * 1 / 40, nose);
    final noseborder = Paint()
      ..color = Colors.brown
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        Offset(size.width / 2, 240), size.width * 1 / 40, noseborder);

    canvas.drawLine(Offset(20, 280), Offset(105, 340), noseborder);
    canvas.drawLine(Offset(360, 280), Offset(285, 340), noseborder);





  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;
}
