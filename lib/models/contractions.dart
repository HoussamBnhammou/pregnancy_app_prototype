class Contraction {
  int id;
  int numberOfContractions;
  int painLevel;
  DateTime date;

  Contraction({
    required this.id,
    required this.numberOfContractions,
    required this.painLevel,
    required this.date
  });

  // Getters

  int getId() {
    return id;
  }

  int getNumberOfContractions() {
    return numberOfContractions;
  }

  int getPainLevel() {
    return painLevel;
  }

  // Setters

  void setId(int newId) {
    id = newId;
  }

  void setNumberOfContractions(int newNumberOfContractions) {
    numberOfContractions = newNumberOfContractions;
  }

  void setPainLevel(int newPainLevel) {
    painLevel = newPainLevel;
  }
}
