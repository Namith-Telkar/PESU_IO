import 'package:flutter/material.dart';
import 'package:pesuio/profile/profile.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
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
                Image.asset('assets/images/PESUIOLogo.jpg'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profile(name: 'TESt', srn: 'PES2UG19abs')));
                  },
                  child: ListTile(
                    title: Text('Shruti'),
                    subtitle: Text('PES2UG19xyz'),
                  ),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
                ListTile(
                  title: Text('Shruti'),
                  subtitle: Text('PES2UG19xyz'),
                ),
              ],
            )),
      ),
    );
  }
}
