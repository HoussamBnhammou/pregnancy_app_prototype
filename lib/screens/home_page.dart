import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/contraction_counter_page.dart';
import 'package:pregnancy_app_prototype/screens/lunch_screen.dart';
import 'package:pregnancy_app_prototype/screens/symptoms_page.dart';
import 'package:pregnancy_app_prototype/widgets/article_component.dart';
import 'package:pregnancy_app_prototype/widgets/baby_widget.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/mother.dart';

class Home extends StatefulWidget {
  final Mother mother;
  const Home({super.key, required this.mother});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costumAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            babyInformation(),
            article(),
            someSpace(),
            bottomTabsForNavigation(),
          ],
        ));
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  PreferredSize costumAppBar() => PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: NavigationBarWidget(
            pageTitle: 'Home',
            onBackButtonPressed: () {},
            onProfileButtonPressed: () {}),
      );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  BabyWidget babyInformation() => BabyWidget(
      name: 'Baby',
      age: widget.mother.babies[0].getAgeInDays(),
      imageUrl:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fzeldawiki.wiki%2Fwiki%2FLink&psig=AOvVaw2uXrKpZJHVZ3jecrs3Je_B&ust=1691328285442000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODe7ujbxYADFQAAAAAdAAAAABAE");
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  ArticleComponent article() => const ArticleComponent(
        imageUrl:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzeldawiki.wiki%2Fwiki%2FLink&psig=AOvVaw2uXrKpZJHVZ3jecrs3Je_B&ust=1691328285442000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODe7ujbxYADFQAAAAAdAAAAABAE',
        title: "wldi mate",
        text: "wiik wiik ya3ibadlah",
      );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Expanded someSpace() => Expanded(child: Container());
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Row bottomTabsForNavigation() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          toSymptomsPage(),
          toHomePage(),
          toCounters(),
        ],
      );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  IconButton toSymptomsPage() => IconButton(
        icon: const Icon(Icons.bar_chart),
        onPressed: navigateToSymptomsPage,
      );

  void navigateToSymptomsPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SymptomPage()));
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  IconButton toHomePage() => IconButton(
        icon: const Icon(Icons.home),
        onPressed: () {},
      );
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  IconButton toCounters() => IconButton(
        icon: const Icon(Icons.build),
        onPressed: navigateToCounterPage,
      );

  void navigateToCounterPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ContractionPage(
                  contractions: 0,
                )));
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// non callable components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  @override
  void initState() {
    super.initState();
    checkFirstLaunch();
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Future<void> checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('first_launch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('first_launch', false);
      // calling context on a async is dangerous, so u always have to check if it is mounted first
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LunchScreen()),
        );
      }
    }
  }
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
}
