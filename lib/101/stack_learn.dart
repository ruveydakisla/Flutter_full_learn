import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.deepOrangeAccent,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.indigo,
              height: 100,
            ),
          ),
          Positioned(
              width: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(height: 100, color: Colors.yellow),
              )),
          Positioned.fill(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(height: 100, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
