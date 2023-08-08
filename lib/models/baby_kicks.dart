class BabyKicks {
  int id;
  int numberOfKicks;
  DateTime date;

  BabyKicks({
    required this.id,
    required this.numberOfKicks,
    required this.date,
  });

  // Getters

  int getId() {
    return id;
  }

  int getNumberOfKicks() {
    return numberOfKicks;
  }

  DateTime getDate() {
    return date;
  }

  // Setters

  void setId(int newId) {
    id = newId;
  }

  void setNumberOfKicks(int newNumberOfKicks) {
    numberOfKicks = newNumberOfKicks;
  }

  void setDate(DateTime newDate) {
    date = newDate;
  }
}
