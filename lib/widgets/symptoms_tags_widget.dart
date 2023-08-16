// we ought to modift return_button_widget and make costumisabale further

import 'package:flutter/material.dart';

class SymptomTag extends StatelessWidget {
  final Function onPressed;
  const SymptomTag({super.key,
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    onPressed() => null;

    return TextButton(onPressed: onPressed, child: const Text('symptom'));
  }
}
