






import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar/nav_bar.dart';

import '../widgets/symptom_tag_widget/symptoms_tags_widget.dart';

class SymptomPage extends StatelessWidget{
  const SymptomPage({super.key});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(57),
          child: NavigationBarWidget(pageTitle: 'Symptoms', onBackButtonPressed: ()=>null, onProfileButtonPressed: ()=>null),
        ),
        body: 
        Column(

          children: [
            (Wrap(
          spacing: 8.0, // Adjust spacing between items
          runSpacing: 8.0,
          children:List.generate(
          25,
          (index){
          return const SymptomTag();
        }),
      )),
        Expanded(
          child:Container()),

        TextButton(onPressed: (){}, child: const Text('Apply'))

          ],
        )
        
      );
  
    // TODO: implement build
    throw UnimplementedError();
  }

  
}