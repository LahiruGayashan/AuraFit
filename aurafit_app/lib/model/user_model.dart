import 'package:aurafit_app/model/equipment.dart';
import 'package:aurafit_app/model/exercise.dart';

class UserModel {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExercieseCompleted = 0;
  int totalequipmentsHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmetList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmetList;

  UserModel({required this.userId, required this.fullName, required this.gender, required this.address, required this.age, required this.description, required this.exerciseList, required this.equipmetList, required this.favExerciseList, required this.favEquipmetList});
  
}
