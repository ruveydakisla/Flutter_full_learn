import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurple),
        body: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: Container(
                color: Colors.amber,
                height: 100,
              ),
            )
          ],
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical =
      EdgeInsets.symmetric(vertical: 20, horizontal: 20);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
