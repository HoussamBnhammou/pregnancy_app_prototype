import 'package:flutter/material.dart';
import '../widgets/counter_widget/counter_widget.dart';
import './contraction_counter_page.dart';
import '../../../main.dart';

class KickPage extends StatelessWidget {
  final int kicks;
  const KickPage({super.key, required this.kicks});

  @override
  Widget build(BuildContext context) {
    //navigation function
    void moveToContractions() {
      Widget nextPage = const ContractionPage(contractions: 15);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => (nextPage)));
    }

    void takeMeHome() {
      Widget home =  MyApp();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => (home)));
    }

    //widgets used
    //++++++++++
    Widget home = Container(
        color: Colors.grey,
        alignment: Alignment.centerRight,
        child:
            ElevatedButton(onPressed: takeMeHome, child: const Text("Home")));
    //++++++++++
    Widget counter = CounterWidget(displayTitle: "kicks", displayValue: kicks);
    //++++++++++
    Widget navs = Container(
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: moveToContractions, child: const Text("contractions")),
          const ElevatedButton(onPressed: null, child: Text("kicks"))
        ],
      ),
    );
    //+++++++++++++++++

    //main Widget
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          home,
          counter,
          navs,
        ],
      )),
    );
  }
}
