import 'package:flutter/material.dart';
import 'package:pomodoro_app/middle_section.dart';
import 'package:pomodoro_app/top_section.dart';
// import 'bottom_section.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 0, 0),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TopSection(),
          SizedBox(height: 10),
          MiddleSection(),
        ],
      ),

      // Container(child: CountDownTimer(),)
    ));
  }
}

// TODO
// añadir funcionalidad a botones
// arreglar iconos
// crear circulo apestoso
