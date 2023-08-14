class Baby {
  DateTime conceptionDate;
  String sex;
  String name;
  int ageInDays;

  Baby({
    required this.conceptionDate,
    this.ageInDays = 0,
    this.sex = 'male',
    this.name = 'Baby',
  });

  // Getters

  int getAgeInDays() {
    ageInDays = DateTime.now().difference(conceptionDate).inDays;
    return ageInDays;
  }

  String getSex() {
    return sex;
  }

  String getName() {
    return name;
  }

  // Setters

  void setAgeInDays(int newAgeInDays) {
    ageInDays = newAgeInDays;
  }

  void setSex(String newSex) {
    sex = newSex;
  }

  void setName(String newName) {
    name = newName;
  }
}
