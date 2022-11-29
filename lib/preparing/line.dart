import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawLinePreparing extends StatelessWidget {
  const DrawLinePreparing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
          child: CustomPaint(
            foregroundPainter: LinePainter(),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()..strokeWidth=10..color=Colors.white;

    canvas.drawLine(
      Offset(size.width*1/6,size.height*1/2),
      Offset(size.width*5/6,size.height*1/2),
      paint
    );


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;


}
