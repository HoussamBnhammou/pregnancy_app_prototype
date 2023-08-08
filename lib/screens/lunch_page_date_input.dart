import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/models/women.dart';
import 'package:pregnancy_app_prototype/screens/home_page.dart';
import 'package:pregnancy_app_prototype/widgets/dateInputWidget.dart';

import '../models/baby.dart';
import '../widgets/nav_bar.dart';

class LunchPageDateInput extends StatefulWidget{
  final int question ;
  
  const LunchPageDateInput({super.key, required this.question});
  
  @override
  _LunchPageDateInputState createState()=> _LunchPageDateInputState();
}


class _LunchPageDateInputState extends State<LunchPageDateInput> {
    
//i have an issue here whatever selected date i have , i get in the ageindays a value of 0 i don't know if it is a setState problem i made some prints in the if statement to make sure it entered there(it does) , i made ageindays take some static values but still the value 0 didn't change.

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    
     var conceptionDate= DateTime.now();
     var age = conceptionDate.difference(DateTime.now()) ;
     int  ageInDays = conceptionDate.difference(DateTime.now()).inDays ;
void apply(DateTime date) {
  setState(() {
    selectedDate = date;

    if (widget.question == 3) {
      conceptionDate = selectedDate.add(Duration(days: 16));
      ageInDays = conceptionDate.difference(DateTime.now()).inDays;
      
      print('i am heere 3');
    } else if (widget.question == 1) {
      conceptionDate = selectedDate;
      ageInDays = conceptionDate.difference(DateTime.now()).inDays;
      
      print('i am heeere 1');
    } else if (widget.question == 2) {
      conceptionDate = selectedDate; 
      ageInDays= 25;
      ageInDays = conceptionDate.difference(DateTime.now()).inDays;
      print('i am geeer 2');
    } else {
      ageInDays = 15;
    }
  });
}

  

    return Scaffold(
      body: 
      Column(children: [   Center(
        child: DateInputWidget(onSelectedDate: apply),
      ),
      TextButton(onPressed: (){
        print('age age age ${ageInDays}');
        Baby baby = new Baby(conceptionDate: conceptionDate);
        Mother mother = new Mother(conceptionDate: conceptionDate, babies: [baby]);
      

    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home(mother: mother),)) ;
    
      }, child: const Text('Apply')),],)
      );


  }
  
 
  


}