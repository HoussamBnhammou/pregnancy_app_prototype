//i'll do this after we finish the app bar



import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/contraction_counter_page.dart';
import 'package:pregnancy_app_prototype/screens/symptoms_page.dart';
import 'package:pregnancy_app_prototype/widgets/article_widget/article_component.dart';
import 'package:pregnancy_app_prototype/widgets/baby_widget/baby_widget.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar/nav_bar.dart';

class Home extends StatelessWidget{
  const Home({super.key});

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
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
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
        BabyWidget(name: 'momo', age: 300, imageUrl: ""),
        ArticleComponent(imageUrl: '', title: "wldi mate", text: "wiik wiik ya3ibadlah",),
        Expanded(child: Container()),
        rowButtons

      ]),




    );
    throw UnimplementedError();
  }


}