import 'package:flutter/material.dart';
import '../widgets/drop_down_widget.dart';
import '../models/symptom.dart';
import '../models/hydration.dart';
import '../models/symptom_type.dart';

class AddSymptom extends StatefulWidget {
  final void Function(Symptom) update;
  const AddSymptom({super.key, required this.update});

  @override
  State<AddSymptom> createState() => _AddSymptomState();
}

class _AddSymptomState extends State<AddSymptom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          choseSymptom(),
          choseHydrationLevel(),
          addNoteAboutSymptom(),
          ElevatedButton(
              onPressed: () {
                retrieveInformation();
              },
              child: const Text("save"))
        ],
      ),
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Widget choseSymptom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("choose a symptom :"),
        DropdownButtonExample(
          list: const [
            "nausea",
            "dizziness",
            "vomiting",
            "bloating",
            "redness",
            "pain",
            "big tits"
          ],
          comms: updateSymptomType,
        ),
      ],
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Widget choseHydrationLevel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("choose hydration level :"),
        DropdownButtonExample(
          list: const ["dehyrated", "well hydrated", "overhydrated"],
          comms: updateHydrationLevel,
        ),
      ],
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  final myController = TextEditingController();
  Widget addNoteAboutSymptom() {
    return TextField(
      controller: myController,
      maxLines: 5,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: "add notes about your symptom",
        alignLabelWithHint: true,
        hintText: "the little sucker won't stop moving",
        border: OutlineInputBorder(),
      ),
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  void retrieveInformation() {
    String note = myController.text;
    Symptom toAdd = Symptom(
        symptomsByCategory: getSymptomType(symptomType),
        hydrationLevel: getHydrationLevel(hydrationLevel),
        note: note,
        date: DateTime(2023));
    widget.update(toAdd);
    Navigator.pop(context);
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// utilities
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  String hydrationLevel = "";
  void updateHydrationLevel(String value) {
    setState(() {
      hydrationLevel = value;
    });
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  String symptomType = "";
  void updateSymptomType(String value) {
    setState(() {
      symptomType = value;
    });
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Symptoms getSymptomType(String value) {
    List culprits = [
      Symptoms.nausea,
      Symptoms.bigTits,
      Symptoms.bloating,
      Symptoms.dizziness,
      Symptoms.pain,
      Symptoms.redness,
      Symptoms.vomiting,
    ];
    for (final element in culprits) {
      if (value == element.name) {
        return element;
      }
    }
    return Symptoms.bigTits;
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Hydration getHydrationLevel(String value) {
    List culprits = [
      Hydration.dehydated,
      Hydration.wellhydrated,
      Hydration.wellhydrated,
    ];
    for (final element in culprits) {
      if (value == element.name) {
        return element;
      }
    }
    return Hydration.wellhydrated;
  }
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
}
