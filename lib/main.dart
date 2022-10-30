import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lessons/101/appBar_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.red,
                centerTitle: true,
                systemOverlayStyle: SystemUiOverlayStyle.light,//Burada saat şarj gibi özelliklerin teması değiştiriliyor
                elevation: 0)),
        home: const AppBarLearn());
  }
}
