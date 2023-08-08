import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/home_page.dart';
import 'package:pregnancy_app_prototype/screens/lunch_page_date_input.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/baby.dart';
import 'models/women.dart';




Future<void> main() async {

  
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final String imageUrl = '../y_and_b.jpg';

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Date Input Widget',
      home: Home( mother: Mother(conceptionDate: DateTime(2023, 1, 1)  , babies: [ Baby(conceptionDate: DateTime(2023, 1, 1))]),),
    );  
  }
}

