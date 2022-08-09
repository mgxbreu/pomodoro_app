import 'package:flutter/material.dart';
import './button_pomodoro.dart';
import './rest.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = "Pomodoro App 🍅 ✨";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 0, 0),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 208, 0, 0),
            title: Text(title)),
        body: Container(
          child: Column(children: [
            Center(
              child: Row(
                children: [
                  PomodoroButton("Pomodoro"),
                  PomodoroButton("Rest"),
                ],
              ),
            ),
            RestButton("Reset"),
          ]),
        ),
      ),
    );
  }
}
