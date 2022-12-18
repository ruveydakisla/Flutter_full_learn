import 'package:flutter/material.dart';
import 'package:flutter_lessons/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardheight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(alignment: Alignment.center, children: [
              Positioned.fill(
                bottom: _cardheight / 2,
                child: const RandomImage(
                  height: 200,
                ),
              ),
              const Positioned(
                height: 50,
                width: 200,
                bottom: 0,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),
              )
            ]),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
