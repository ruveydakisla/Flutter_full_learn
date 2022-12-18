import 'package:flutter/material.dart';
import 'package:flutter_lessons/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl =
      'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {},
            title: const Text('Ruveyda Kışla'),
            trailing: const Icon(Icons.arrow_right),
            leading: const Icon(Icons.account_box),
            subtitle: const RandomImage(height: 80),
            //dense: true, //Küçültüp sıkıştırıyor

            isThreeLine: true,
            shape: const StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
