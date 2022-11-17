class Student{
  String name;
  String srn;
  String phoneNo;

  Student({required this.name,required this.srn,required this.phoneNo});

  Map<String,dynamic> getStudentMap(){
    return {
      'name':name,
      'srn':srn,
      'phoneNo':phoneNo
    };
  }

  static Student getStudentFromMap(Map m){
    return Student(name: m['name'],srn: m['srn'],phoneNo: m['phoneNo']);
  }
}