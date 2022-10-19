import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            name: 'uno',
          ),
          SizedBox(height: 20),
          CustomCardType2(
              imageUrl:
                  'https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg'),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
            name: 'tres',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
