import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view tipo 1'),
      ),
      body: ListView(children: [
        ...options
            .map((game) => ListTile(
                  leading: const Icon(Icons.accessibility_new_rounded),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  title: Text(game),
                ))
            .toList(),
        Divider()
      ]),
    );
  }
}
