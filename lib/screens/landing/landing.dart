import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pesuio/models/student.dart';
import 'package:pesuio/redux/store.dart';
import 'package:pesuio/screens/input/input.dart';
import 'package:pesuio/screens/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late BuildContext appStateContext;

  // late SharedPreferences prefs;
  // List<Student> students = [];
  //
  // void getStoredList() async{
  //   prefs = await SharedPreferences.getInstance();
  //   List<String> studentList = prefs.getStringList('studentList') ?? [];
  //   if(studentList!=[]){
  //     setState(() {
  //       students = List<Student>.from(studentList.map((e) => Student.getStudentFromMap(json.decode(e))).toList());
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 0),
      () => {
        // getStoredList()
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState,AppState>(
      converter: (store) => store.state,
      builder: (context,state){
        appStateContext = context;
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
                  ...StoreProvider.of<AppState>(appStateContext).state.students!.map(
                    //...students.map(
                        (e) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile(
                                  name: e.name,
                                  srn: e.srn,
                                  phoneNo: e.phoneNo,
                                )));
                      },
                      child: ListTile(
                        title: Text(e.name),
                        subtitle: Text(e.srn),
                        trailing: FaIcon(
                          FontAwesomeIcons.user,
                        ),
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
              //Navigator.pushNamed(context, Input.routeName);
              Navigator.pushReplacementNamed(context, Input.routeName);
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
