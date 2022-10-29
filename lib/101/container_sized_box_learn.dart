import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Text('aa' * 800),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            //Kare yapmak istediğimizde kullanırız.
            dimension: 50,
            child: Text('i' * 200),
          ),
          Container(
            width: 100,
            height: 100,
            //color: Colors.pink,
            constraints: const BoxConstraints(maxWidth: 100, minWidth: 50),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.black26]),
                boxShadow: const [
                  BoxShadow(color: Colors.orange, offset: Offset(0.1, 1))
                ],
                border: Border.all(width: 10)),

            child: Text('o' * 200),
          )
        ],
      ),
    );
  }
}
