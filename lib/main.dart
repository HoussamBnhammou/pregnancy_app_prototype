import 'package:flutter/material.dart';
import 'widgets/dateInputWidgets/dateInputWidget.dart';
import 'widgets/profileButtonWidgets/profileButtonWidgets.dart';
import 'widgets/nav_bar/nav_bar.dart';
import 'widgets/charts/liquid_fill_gauge.dart';

void main(n) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final String imageUrl = '../y_and_b.jpg';
  @override
  Widget build(BuildContext context) {
    var navbar = NavigationBarWidget(pageTitle:'hhh',
        onBackButtonPressed:()=>{true},
        onProfileButtonPressed:()=>{true} );
    return MaterialApp(
      
      title: 'Date Input Widget',
      home: Scaffold(
        appBar: PreferredSize (
        preferredSize: navbar.preferredSize,
        child: navbar
        ),
        body: Center(
          child:  WaterIntakeGauge(
  value: 0.7, // Replace this with the actual progress value (between 0.0 and 1.0)
  height: 200, // Customize the height of the gauge
 // Customize the water color
),
        ),
      ),
    );  
  }
}

