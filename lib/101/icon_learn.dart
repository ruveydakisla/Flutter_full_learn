import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});
  final IconSizes iconSizes = IconSizes();
  final Colorss colors = Colorss();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_rounded),
              color: Theme.of(context).colorScheme.background,
              iconSize: iconSizes.smalliconX2),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded),
            color: colors.Lilac,
            iconSize: iconSizes.smallIcon,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded),
            color: colors.Lilac,
            iconSize: iconSizes.smalliconX2,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded),
            color: colors.Lilac,
            iconSize: iconSizes.smallIcon,
          )
        ],
      ),
    );
  }
}

class IconSizes {
  final double smallIcon = 60;
  final double smalliconX2 = 120;
}

class Colorss {
  final Color Lilac = const Color.fromRGBO(212, 161, 207, 1);
}
