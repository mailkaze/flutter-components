import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.accessibility_new_rounded),
          trailing:
              const Icon(Icons.arrow_forward_ios_sharp, color: Colors.indigo),
          title: Text(options[index]),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
