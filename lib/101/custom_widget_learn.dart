import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,//Başlangıç yeri
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RedButton(
                title: title,
              ),
            ),
          )),
          const SizedBox(
            height: 100,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 200,
                height: 50,
                child: RedButton(
                  title: title,
                ),
              ))
        ],
      ),
    );
  }
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color WhiteColor = Colors.white;
}

class RedButton extends StatelessWidget with _ColorsUtility {
  RedButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: WhiteColor)));
  }
}
