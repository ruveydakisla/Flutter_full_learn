import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          const Expanded(flex: 2, child: FlutterLogo()),
          const Expanded(flex: 2, child: FlutterLogo()),
          const Expanded(flex: 2, child: FlutterLogo()),
          const Expanded(flex: 2, child: FlutterLogo()),
          Row(
            children: const [
              Expanded(child: FlutterLogo()),
              Expanded(child: FlutterLogo()),
              Expanded(child: FlutterLogo()),
            ],
          )
        ]));
  }
}
