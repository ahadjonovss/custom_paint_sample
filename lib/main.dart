import 'package:custom_paint_sample/preparing/circle.dart';
import 'package:custom_paint_sample/preparing/line.dart';
import 'package:custom_paint_sample/preparing/rectangle.dart';
import 'package:custom_paint_sample/preparing/rounded_rectangle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DrawCirclePreparing(),
    );
  }
}
