import './symptom_type.dart';
import './hydration.dart';

class Symptom {
  Symptoms symptomsByCategory;
  Hydration hydrationLevel;
  String note;
  DateTime date;

  Symptom({
    required this.symptomsByCategory,
    required this.hydrationLevel,
    required this.note,
    required this.date,
  });

  // Getters

  Symptoms getSymptomsByCategory() {
    return symptomsByCategory;
  }

  Hydration getHydrationLevel() {
    return hydrationLevel;
  }

  String getNote() {
    return note;
  }

  DateTime getDate() {
    return date;
  }

  // Setters

  void setSymptomsByCategory(Symptoms newSymptomsByCategory) {
    symptomsByCategory = newSymptomsByCategory;
  }

  void setHydrationLevel(Hydration newHydrationLevel) {
    hydrationLevel = newHydrationLevel;
  }

  void setNote(String newNote) {
    note = newNote;
  }

  void setDate(DateTime newDate) {
    date = newDate;
  }
}
