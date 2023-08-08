import 'package:flutter/material.dart';

class BabyWidget extends StatelessWidget {
  // parameters
  final String name;
  final int age;
  final String imageUrl;

  // constructure
  const BabyWidget(
      {super.key,
      required this.name,
      required this.age,
      required this.imageUrl});

  // DON'T TOUCH THIS
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  // Main Code
  Widget _buildBody() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imageUrl),
          Text("name: $name"),
          Text('age : $age')
        ],
      );
}
