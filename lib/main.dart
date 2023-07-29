import 'package:flutter/material.dart';
import 'widgets/dateInputWidgets/dateInputWidget.dart';
import 'widgets/profileButtonWidgets/profileButtonWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String imageUrl = '../y_and_b.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Input Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Input Widget'),
        ),
        body: Center(
          child:  ProfileCircleWidget(
          imageUrl: imageUrl,
          onPressed: ()=>{true},
        ),
        ),
      ),
    );  
  }
}

