import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pregnancy_app_prototype/models/storage_manager.dart';
import 'package:pregnancy_app_prototype/screens/home_page.dart';

import 'models/baby.dart';
import 'models/mother.dart';
import 'package:hive/hive.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Add this line
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String imageUrl = '../y_and_b.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Input Widget',
      home: Home(
        mother: Mother(
            conceptionDate: DateTime(2023, 1, 1),
            babies: [Baby(conceptionDate: DateTime(2023, 1, 1))]),
      ),
    );
  }
}
