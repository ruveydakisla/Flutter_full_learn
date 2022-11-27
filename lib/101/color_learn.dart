import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final String _title = 'Colors';
  final MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.CavernPink,
        title: Text(_title),
        titleTextStyle: const TextTheme().headline2,
      ),
      body: Container(
        color: myColors.Blackberry,
        child: const Text('Hello World'),
      ),
    );
  }
}

class MyColors {
  final Color Blackberry = const Color(0xff4d0135);
  static Color CavernPink = const Color(0xffE3BEBE);
}
