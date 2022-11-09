import 'package:flutter/material.dart';
import 'package:pesuio/models/student.dart';
import 'package:pesuio/screens/input/input.dart';
import 'package:pesuio/screens/profile/profile.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  List<Student> students = [
    Student(name: 'Namith', srn: 'Pes2ug19csxyz', phoneNo: '9999'),
    Student(name: 'Namith', srn: 'Pes2ug19csxyz', phoneNo: '9999'),
    Student(name: 'Namith', srn: 'Pes2ug19csxyz', phoneNo: '9999')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05,
              horizontal: MediaQuery.of(context).size.width * 0.1),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Image.asset(
                'assets/images/PESUIOLogo.jpg',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ...students
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Profile(name: e.name, srn: e.srn,phoneNo: e.phoneNo,)));
                      },
                      child: ListTile(
                        title: Text(e.name),
                        subtitle: Text(e.srn),
                        trailing: Icon(Icons.supervised_user_circle),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Input.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
