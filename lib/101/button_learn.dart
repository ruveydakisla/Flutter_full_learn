import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text('click'),
            onPressed: () {},
          ),
          //Herhangi bir button un on pressine null atarsak tıklanma özelliğini kapatırız.
          ElevatedButton(
              onPressed: () {}, child: const Text('elevated Button')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.add_a_photo)),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade300,
                shape: const CircleBorder(),
              ),
              onPressed: () {},
              child: const Icon(Icons.ac_unit)),
          const Text('Click'),
          InkWell(
            // Herhangi bir şeye tıklanabilme özelliği veriyor. Link eklenebiliyo gibi
            child: const Text('aaa'),
            onTap: () {},
          ),
          Container(
            height: 200,
            color: Colors.amber,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              label: const Text('add'),
              icon: const Icon(Icons.add_a_photo_outlined)),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all((Radius.circular(10))))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}
