import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: ProjectMargin.CardMargin,
          color: Colors.pink.shade100,
          shape: const CircleBorder(),
          child: const SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text('Ruveyda'),
            ),
          ),
        ),
        const CustomCards(
          color: Colors.black12,
          child: SizedBox(
              width: 150, height: 200, child: Center(child: Text('Ömer'))),
        ),
        const Card(child: SizedBox(width: 100, height: 100))
      ]),
    );
  }
}

class ProjectMargin {
  static const CardMargin = EdgeInsets.all(10);
}

class CustomCards extends StatelessWidget {
  final Widget child;
  final Color color;

  const CustomCards({super.key, required this.child, required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Card(color: color, child: child));
  }
}
//BORDERS
//StadiumBorder(),RectangleBorder(),CircleBorder()