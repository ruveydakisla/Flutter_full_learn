import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Image.network(
                "https://png.pngtree.com/element_our/20190529/ourlarge/pngtree-colored-books-and-apple-illustration-image_1209643.jpg",
                errorBuilder: ((context, error, stackTrace) =>
                    const Icon(Icons.abc_outlined)))
          ],
        ));
  }
}
