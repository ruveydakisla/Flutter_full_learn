import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  final title = 'Create Your First Note';

  @override
  Widget build(BuildContext context) {
    var text2 = 'Import Notes';
    var blueGrey = Colors.blueGrey[50];
    return Scaffold(
      backgroundColor: blueGrey,
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
          padding: PagePadding.horizontalPadding,
          child: Column(
            children: [
              const _ImageWidget(),
              _TitleWidget(title: title),
              const Padding(
                padding: PagePadding.verticalPadding,
                child: _PageText(
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: PagePadding.verticalPadding,
                child: _ElevatedButton(),
              ),
              Padding(
                padding: PagePadding.verticalPadding,
                child: _TextButton(
                  text: text2,
                ),
              )
            ],
          )),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.blue,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w500),
        ));
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: Center(
              child: Text(
            'Create a note',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(letterSpacing: 2, fontWeight: FontWeight.w500),
          )),
        ));
  }
}

class _PageText extends StatelessWidget {
  const _PageText(
      {Key? key,
      // ignore: unused_element
      this.textAlign = TextAlign.center})
      : super(key: key);
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text('Add a note' * 10,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w600));
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://w7.pngwing.com/pngs/715/971/png-transparent-book-stack-book-reading-library-icon-books-blue-angle-text-thumbnail.png");
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black87, fontWeight: FontWeight.w700));
  }
}

// class PngImage extends StatelessWidget {
//   const PngImage({super.key, required this.name});
//   final String name;

//   @override
//   Widget build(BuildContext context) {
//    return Image.asset(_nameWithPath,fit:BoxFit.cover);
//   }

class PagePadding {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}
