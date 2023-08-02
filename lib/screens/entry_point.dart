import 'package:flutter/material.dart';
import './contraction_counter_page.dart';

//ignore this, i just used it so i can locate the navigator in the context
//without using router, when u finish the docs u will understand what i mean

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    // simple navigation starter
    void tgv() {
      Widget page = const ContractionPage(contractions: 15);
      Navigator.push(context, MaterialPageRoute(builder: (context) => (page)));
    }

    return Center(
      child: ElevatedButton(
        onPressed: tgv,
        child: const Text("Go to Counters"),
      ),
    );
  }
}
