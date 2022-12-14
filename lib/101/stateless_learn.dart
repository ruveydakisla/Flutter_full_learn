import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final String text1 = 'deneme'; // 101 seviyesinde textler burada olmalı

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            text: text1,
          ),
          TitleTextWidget(
            text: text1,
          ),
          TitleTextWidget(text: text1),
          TitleTextWidget(text: text1),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amberAccent),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
