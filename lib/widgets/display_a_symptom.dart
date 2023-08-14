import 'package:flutter/material.dart';
import '../models/symptom.dart';

class DisplaySingleSymptom extends StatelessWidget {
  final Symptom target;
  late final String symptomName = target.symptomsByCategory.name;
  late final String hydrationLevel = target.hydrationLevel.name;
  late final String dateOfSymptom = target.date.toString();
  late final String note = target.note;
  DisplaySingleSymptom({super.key, required this.target});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.grey,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          symptomHeaderInformation(),
          symptomNoteInformation(),
        ],
      ),
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Row symptomHeaderInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Symptom : $symptomName"),
        Text("Date : $dateOfSymptom"),
        Text("Hydration Level : $hydrationLevel"),
      ],
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Row symptomNoteInformation() {
    return Row(
      children: [
        Text("Notes : $note"),
      ],
    );
  }
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
}
