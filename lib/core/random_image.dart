import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, required this.height});
  final imageUrl =
      'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
