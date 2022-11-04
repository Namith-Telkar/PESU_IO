import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'PESU I/O',
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
                'Namith',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                'SRN : PES2UG19CSXYZ',
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
              ElevatedButton(
                  onPressed: (){
                    print('present');
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
