import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  // parameters
  final int contractions;
  final int kicks;

  // constructure
  const CounterWidget(
      {super.key, required this.contractions, required this.kicks});

  // DON'T TOUCH THIS
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  // Main Code
  Widget _buildBody() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('contractions : $contractions'),
          Text(' kicks : $kicks')
        ],
      );
}
