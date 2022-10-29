import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  //stls kısayolu ile açtık
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Text(
        'merhaba',
        style: TextStyles.Styles,
      ),
      backgroundColor: const Color.fromARGB(255, 201, 175, 217),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined), label: 'b'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined), label: 'c')
      ]),
    );
  }
}

class TextStyles {
  static TextStyle Styles =
      const TextStyle(fontSize: 25, color: Color.fromARGB(255, 0, 0, 0));
}
