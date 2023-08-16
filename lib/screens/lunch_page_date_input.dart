import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/models/mother.dart';
import 'package:pregnancy_app_prototype/models/storage_manager.dart';
import 'package:pregnancy_app_prototype/screens/home_page.dart';
import 'package:pregnancy_app_prototype/widgets/date_input_widget.dart';

import '../models/baby.dart';

class LunchPageDateInput extends StatefulWidget {
  final int question;

  const LunchPageDateInput({super.key, required this.question});

  @override
  State<LunchPageDateInput> createState() => _LunchPageDateInputState();
}

class _LunchPageDateInputState extends State<LunchPageDateInput> {
  DateTime selectedDate = DateTime.now();
  DateTime conceptionDate = DateTime.now();
  int ageInDays = 0;

  void calculateAgeInDays() {
    ageInDays = DateTime.now().difference(conceptionDate).inDays;
   
  }

  void calculateConceptionDate(DateTime date) {
    setState(() {
      selectedDate = date;

      if (widget.question == 3) {
        conceptionDate = selectedDate.add(const Duration(days: 16));
        calculateAgeInDays();
      
      } else if (widget.question == 1) {
        conceptionDate = selectedDate;
        calculateAgeInDays();
       
      } else if (widget.question == 2) {
        conceptionDate = selectedDate;
        calculateAgeInDays();
      
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: DateInputWidget(onSelectedDate: calculateConceptionDate),
          ),
          TextButton(
            onPressed: () {
       
              Baby baby = Baby(conceptionDate: conceptionDate);
              Mother mother = Mother(conceptionDate: conceptionDate, babies: [baby]);

              StorageManager().storageInit(mother);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(mother: mother),
                ),
              );
            },
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }
}
