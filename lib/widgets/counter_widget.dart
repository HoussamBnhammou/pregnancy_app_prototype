// was modified

import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  // parameters
  final String displayTitle;
  final int displayValue;

  // constructure
  const CounterWidget(
      {super.key, required this.displayTitle, required this.displayValue});

  // DON'T TOUCH THIS
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: _buildBody(),
    );
  }

  // Main Code
  Widget _buildBody() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('$displayTitle : '), Text('$displayValue')],
      );
}
