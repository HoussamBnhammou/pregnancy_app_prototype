import 'package:flutter/material.dart';
import 'package:pregnancy_app_prototype/widgets/nav_bar.dart';
import './add_symptom.dart';
import '../widgets/display_a_symptom.dart';
import '../models/symptom.dart';
import '../models/symptom_type.dart';
import '../models/hydration.dart';

class SymptomPage extends StatefulWidget {
  // variables
  final Symptom symptomOne = Symptom(
      symptomsByCategory: Symptoms.nausea,
      hydrationLevel: Hydration.wellhydrated,
      note: "feeling nauseaus",
      date: DateTime(2023));
  final Symptom symptomTwo = Symptom(
      symptomsByCategory: Symptoms.pain,
      hydrationLevel: Hydration.dehydated,
      note: "pain in the pussy",
      date: DateTime(2023));
  final Symptom symptomThree = Symptom(
      symptomsByCategory: Symptoms.bigTits,
      hydrationLevel: Hydration.overhydrated,
      note: "them big ass juggers",
      date: DateTime(2023));
  late final List toBeDisplayed;
// constructor
  SymptomPage({super.key}) {
    toBeDisplayed = [symptomOne, symptomTwo, symptomThree];
  }

  @override
  State<SymptomPage> createState() => _SymptomPageState();
}

class _SymptomPageState extends State<SymptomPage> {
  List toBeDisplayed = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costumeAppBar(),
        body: Column(
          children: displayAndAddSymptoms(toBeDisplayed),
        ));
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  PreferredSize costumeAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(57),
      child: NavigationBarWidget(
          pageTitle: 'Symptoms',
          onBackButtonPressed: () => null,
          onProfileButtonPressed: () => null,
          returnButton: true,
          profileButton: true,
          
          ),
    );
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  List<Widget> displayAndAddSymptoms(List list) {
    List<Widget> target = [];
    for (final element in list) {
      Widget holder = DisplaySingleSymptom(target: element);
      target.add(holder);
      target.add(const Divider());
    }
    target.add(someSpace());
    target.add(addSymptomButton());
    return target;
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Expanded someSpace() => Expanded(child: Container());
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  Widget addSymptomButton() {
    return Container(
        padding: const EdgeInsets.all(5),
        child: ElevatedButton(
            onPressed: navigateToAddSymptom, child: const Text("Add Symptom")));
  }

  void navigateToAddSymptom() {
    Widget addSymptomPage = AddSymptom(
      update: addSymptomToBeDisplayed,
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => addSymptomPage));
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  void addSymptomToBeDisplayed(Symptom theSymptom) {
    setState(() {
      toBeDisplayed.add(theSymptom);
    });
  }

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Non-Callable Components
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  @override
  void initState() {
    super.initState();
    toBeDisplayed = widget.toBeDisplayed;
  }
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
}
