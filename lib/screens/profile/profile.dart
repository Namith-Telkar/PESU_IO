import 'package:flutter/material.dart';
import 'package:pesuio/services/network_helper.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  final String phoneNo;
  const Profile({Key? key,required this.name,required this.srn,required this.phoneNo}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //String phoneNo = '';
  String meowFact = '';

  void getMeowFact() async {
    String fact = await NetworkHelper.getMeowFact();
    setState(() {
      meowFact = fact;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 0),
          () => {
          getMeowFact(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/PESUIOLogo.jpg',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.srn,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.phoneNo,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 0.0),
                child: Text(
                  meowFact,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff2596be),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
