




import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/screens/animation_page.dart';
import 'package:pregnancy_app_prototype/widgets/dateInputWidgets/dateInputWidget.dart';

import '../widgets/nav_bar/nav_bar.dart';

class LunchPageDateInput extends StatelessWidget{
  const LunchPageDateInput({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: 
      Column(children: [   Center(
        child: DateInputWidget(),
      ),
      TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()) );
      }, child: const Text('Apply')),],)
   

      
    );


    throw UnimplementedError();
  }


}