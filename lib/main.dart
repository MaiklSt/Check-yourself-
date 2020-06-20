import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_your_knowledge/velcom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Проверь себя',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        ),
    //    fontFamily: 'Georgia',
        fontFamily: 'Calibry',
      ),
      home: Velcom(),
    );
  }
}
