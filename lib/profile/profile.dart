import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  const Profile({Key? key,required this.name,required this.srn}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'IslandMoments',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/profile.jpg',
                height: 200.0,
                width: 200.0,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                'Phone no: 9999999999',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                'Phone no: 9999999999',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: 0.0),
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      phoneNo = val;
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'Please enter phone number',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 3.0,
                          )
                      )
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Present'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
