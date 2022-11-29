import 'package:custom_paint_sample/painting/emojies/bad.dart';
import 'package:custom_paint_sample/painting/emojies/good.dart';
import 'package:custom_paint_sample/painting/emojies/normally.dart';
import 'package:custom_paint_sample/painting/emojies/very_good.dart';
import 'package:custom_paint_sample/painting/flag/flag.dart';
import 'package:custom_paint_sample/painting/main_page.dart';
import 'package:custom_paint_sample/painting/snowman/snowman.dart';
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
      home: MainPage(),
    );
  }
}
