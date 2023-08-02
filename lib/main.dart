import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/lunch_page_date_input.dart';
import 'package:pregnancy_app_prototype/screens/symptoms_page.dart';
import 'widgets/dateInputWidgets/dateInputWidget.dart';
import 'widgets/profileButtonWidgets/profileButtonWidgets.dart';
import 'screens/settings_page.dart';
import 'screens/profile_page.dart';

void main(n) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final String imageUrl = '../y_and_b.jpg';

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Date Input Widget',
      home: LunchPageDateInput(),
    );  
  }
}

