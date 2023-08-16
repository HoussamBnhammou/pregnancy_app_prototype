import 'package:pregnancy_app_prototype/screens/lunch_page_date_input.dart';

import '../widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                    "which way  you want us to know the conception date?"),
                Column(children: [
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LunchPageDateInput(question: 1)))
                          },
                      child: const Text('conception date')),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LunchPageDateInput(question: 1)))
                          },
                      child: const Text('last time u had sex')),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LunchPageDateInput(question: 3)))
                          },
                      child: const Text('last periode'))
                ]),
              ],
            )),
      ),
    );
    // TODO: implement build
  }

  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}
