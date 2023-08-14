import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pregnancy_app_prototype/models/mother.dart';



class StorageManager {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFileMother async {
    final path = await _localPath;
    return File('$path/mother.json');
  }

  Future<File> storageInit(Mother mother) async {
    final file = await _localFileMother;

    final motherJson =jsonEncode(
        {
          'age': mother.age,
          'conceptionDate': mother.conceptionDate,
          'babies': {
              'name':mother.babies[0].name,
              'sex':mother.babies[0].sex,
              'ageInDays':mother.babies[0].ageInDays,
              'conceptionDate':mother.babies[0].conceptionDate
              },

          'symptoms': () async => {  await mother.symptoms.map((e) => jsonEncode({
              'date':e.date,
              'note': e.note,
              'hydrationLevel': e.hydrationLevel,
              'symptomsByCategory':e.symptomsByCategory
              }))},
          
          'babyKicks':() async=>{await mother.babyKicks.map((e) => jsonEncode({
              'date':e.date,
              'numberOfKicks':e.numberOfKicks,
              'id':e.id
              }))},
          
          'contractions':() async => {await mother.contractions.map((e) => jsonEncode({
              'date':e.date,
              'painLevel':e.painLevel,
              'numberOfContractions':e.numberOfContractions,
              'id': e.id
              }))},

          'pregnancyTypes': mother.pregnancyTypes,

        }
    );

    // Write the file
    return file.writeAsString(motherJson);
  }


  Future<String> readCounter() async {
    try {
      final file = await _localFileMother;

      final motherJsonString = await file.readAsString();
      final motherJson= jsonDecode(motherJsonString);
      return motherJson; //here i am supposed to return the mother as class object not as json but dumn that shit is annoying 
      

      
    } catch (e) {
      // If encountering an error, return 0
      return 'null'; // i can't retun null so i returned it as string.
    }
  }

}