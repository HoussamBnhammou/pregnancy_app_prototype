import 'package:flutter/material.dart';
import '../widgets/counter_widget.dart';
import './kick_counter_page.dart';
import '../../../main.dart';

class ContractionPage extends StatelessWidget {
  final int contractions;
  const ContractionPage({super.key, required this.contractions});

  @override
  Widget build(BuildContext context) {
    //navigation function
    void moveToKicks() {
      Widget nextPage = const KickPage(kicks: 15);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => (nextPage)));
    }

    void takeMeHome() {
      Widget home = const MyApp();
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
    Widget counter =
        CounterWidget(displayTitle: "Contractions", displayValue: contractions);
    //++++++++++
    Widget navs = Container(
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ElevatedButton(onPressed: null, child: Text("contractions")),
          ElevatedButton(onPressed: moveToKicks, child: const Text("kicks"))
        ],
      ),
    );
    //+++++++++++++++++

    // Main Widget
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
