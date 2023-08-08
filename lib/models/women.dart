import 'baby.dart';
import 'baby_kicks.dart';
import 'contractions.dart';
import 'symptoms.dart';


class Mother {
  int age;
  DateTime conceptionDate;
  List<Symptoms> symptoms;
  String pregnancyTypes;
  List<Contraction> contractions;
  List<BabyKicks> babyKicks;
  List<Baby> babies;

Mother({ this.age =0,
        required this.conceptionDate,
        required this.babies,
        this.symptoms = const [],
        this.babyKicks =const [],
        this.contractions =const [],
        this.pregnancyTypes= 'normal',
});

 // Getters

  int getAge() {
    return age;
  }

  DateTime getConceptionDate() {
    return conceptionDate;
  }

  List<Symptoms> getSymptoms() {
    return symptoms;
  }

  String getPregnancyTypes() {
    return pregnancyTypes;
  }

  List<Contraction> getContractions() {
    return contractions;
  }

  List<BabyKicks> getBabyKicks() {
    return babyKicks;
  }

  List<Baby> getBabies() {
    return babies;
  }

  // Setters

  void setAge(int newAge) {
    age = newAge;
  }

  void setConceptionDate(DateTime newConceptionDate) {
    conceptionDate = newConceptionDate;
  }

  void setSymptoms(List<Symptoms> newSymptoms) {
    symptoms = newSymptoms;
  }

  void setPregnancyTypes(String newPregnancyType) {
    pregnancyTypes = newPregnancyType;
  }

  void setContractions(List<Contraction> newContractions) {
    contractions = newContractions;
  }

  void setBabyKicks(List<BabyKicks> newBabyKicks) {
    babyKicks = newBabyKicks;
  }

  void setBabies(List<Baby> newBabies) {
    babies = newBabies;
  }




}