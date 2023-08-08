import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  // constructor
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    // utility functions
    void showToast() =>
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('button Tapped'),
          duration: Duration(milliseconds: 500),
        ));

    // main widget code
    return ElevatedButton(onPressed: showToast, child: const Text("el Button"));
  }
}
