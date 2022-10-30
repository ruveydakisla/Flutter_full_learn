import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String _title = 'Welcome to Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 145, 179, 146), size: 40),

        automaticallyImplyLeading:
            false, //default olarak back butonu gelmesin demek
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: const [
          Icon(Icons.ad_units),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
