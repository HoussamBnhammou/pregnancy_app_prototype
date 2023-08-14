import 'package:flutter/material.dart';

import '../widgets/counter_widget.dart';
import './kick_counter_page.dart';
import '../../../main.dart';

class ContractionPage extends StatelessWidget {
  final int contractions;

  const ContractionPage({super.key, required this.contractions});

  @override
  Widget build(BuildContext context) {
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//navigation functions
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    void moveToKicks() {
      Widget nextPage = const KickPage(kicks: 0);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => (nextPage)));
    }

    void takeMeHome() {
      Widget home = const MyApp();
      Navigator.push(context, MaterialPageRoute(builder: (context) => home));
    }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    Widget navigateToHome() => Container(
        color: Colors.grey,
        alignment: Alignment.centerRight,
        child:
            ElevatedButton(onPressed: takeMeHome, child: const Text("Home")));
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    Widget displayCounter() =>
        CounterWidget(displayTitle: "Contractions", displayValue: contractions);
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    Widget switchBetweenCounters() => Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ElevatedButton(
                  onPressed: null, child: Text("contractions")),
              ElevatedButton(onPressed: moveToKicks, child: const Text("kicks"))
            ],
          ),
        );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Main Widget
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navigateToHome(),
          switchBetweenCounters(),
          displayCounter(),
        ],
      )),
    );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  }
}
