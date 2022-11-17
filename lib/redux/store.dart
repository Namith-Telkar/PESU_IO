import 'package:pesuio/models/student.dart';

class AppState{
  List<Student>? students;
  AppState(this.students);

  AppState.copyWith({
    required AppState prev,
    List<Student>? newStudents,
}){
    students = newStudents ?? prev.students;
  }

  AppState.initial(){
    students = [];
  }
}