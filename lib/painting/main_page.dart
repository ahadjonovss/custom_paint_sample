import 'package:custom_paint_sample/painting/emojies/bad.dart';
import 'package:custom_paint_sample/painting/emojies/good.dart';
import 'package:custom_paint_sample/painting/emojies/normally.dart';
import 'package:custom_paint_sample/painting/emojies/very_good.dart';
import 'package:custom_paint_sample/painting/flag/flag.dart';
import 'package:custom_paint_sample/painting/snowman/snowman.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
   MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    List pages=[
      Bad(),
      Good(),
      Normally(),
      VeryGood(),
      Flag(),
      Snowman()
    ];
    return Scaffold(
      body: pages[currentPage%6],
      floatingActionButton: FloatingActionButton(
        child: Center(child: Text("->"),),
        onPressed: () {
          setState(() {
            currentPage+=1;
          });

        },

      ),
    );
  }
}
