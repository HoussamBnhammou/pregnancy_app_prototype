class Symptoms {
  Map<String, List<String>> symptomsByCategory;
  double hydrationLevel;
  String note;
  DateTime date;

  Symptoms({
    required this.symptomsByCategory,
    required this.hydrationLevel,
    required this.note,
    required this.date,
  });

  // Getters  

  Map<String, List<String>> getSymptomsByCategory() {
    return symptomsByCategory;
  }

  double getHydrationLevel() {
    return hydrationLevel;
  }

  String getNote() {
    return note;
  }

  DateTime getDate() {
    return date;
  }

  // Setters

  void setSymptomsByCategory(Map<String, List<String>> newSymptomsByCategory) {
    symptomsByCategory = newSymptomsByCategory;
  }

  void setHydrationLevel(double newHydrationLevel) {
    hydrationLevel = newHydrationLevel;
  }

  void setNote(String newNote) {
    note = newNote;
  }

  void setDate(DateTime newDate) {
    date = newDate;
  }
}
