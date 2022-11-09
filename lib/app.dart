import 'package:flutter/material.dart';
import 'package:pesuio/screens/input/input.dart';
import 'package:pesuio/screens/landing/landing.dart';



class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Landing.routeName: (context) => Landing(),
        Input.routeName: (context) => Input(),
      },
    );
  }
}
