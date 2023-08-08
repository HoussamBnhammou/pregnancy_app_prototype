//i'll do this after we finish the app bar



import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/contraction_counter_page.dart';
import 'package:pregnancy_app_prototype/screens/lunch_page_date_input.dart';
import 'package:pregnancy_app_prototype/screens/lunch_screen.dart';
import 'package:pregnancy_app_prototype/screens/symptoms_page.dart';
import 'package:pregnancy_app_prototype/widgets/article_component.dart';
import 'package:pregnancy_app_prototype/widgets/baby_widget.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/baby.dart';
import '../models/women.dart';

class Home extends StatefulWidget {
  final Mother mother;
 const Home({super.key, 
 
 
   required this.mother});
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home>{
  

  @override
  void initState() {
    super.initState();
    checkFirstLaunch();
  }

     Future<void> checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('first_launch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('first_launch', false);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LunchScreen()),
      );
    } 
  }


  @override
  Widget build(BuildContext context) {


      
      var rowButtons = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    IconButton(
      icon: Icon(Icons.bar_chart),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SymptomPage()));
      },
    ),
    IconButton(
      icon: Icon(Icons.home),
      onPressed: () {
        (){};
      },
    ),
    IconButton(
      icon: Icon(Icons.build),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContractionPage(contractions: 0,)));
      },
    ),
  ],
);


    return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(57),
        child: NavigationBarWidget(pageTitle: 'Home', onBackButtonPressed: (){}, onProfileButtonPressed: (){}),
        ),
      
      body:  Column(children: [
        BabyWidget(name: 'Baby', age: widget.mother.babies[0].getAgeInDays(), imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fzeldawiki.wiki%2Fwiki%2FLink&psig=AOvVaw2uXrKpZJHVZ3jecrs3Je_B&ust=1691328285442000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODe7ujbxYADFQAAAAAdAAAAABAE"),
        ArticleComponent(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzeldawiki.wiki%2Fwiki%2FLink&psig=AOvVaw2uXrKpZJHVZ3jecrs3Je_B&ust=1691328285442000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODe7ujbxYADFQAAAAAdAAAAABAE', title: "wldi mate", text: "wiik wiik ya3ibadlah",),
        Expanded(child: Container()),
        rowButtons

      ]),




    );
  }


}