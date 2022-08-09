import 'package:flutter/material.dart';

class PomodoroButton extends StatefulWidget {
  String label;

  PomodoroButton(this.label);

  @override
  State<PomodoroButton> createState() => Button(label);
}

class Button extends State<PomodoroButton> {
  String label;

  Button(this.label);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
       primary: Color.fromARGB(255, 255, 255, 255),
      onPrimary: Color.fromARGB(255, 33, 33, 33),
      elevation: 5,
      textStyle: const TextStyle(fontSize: 20),

      minimumSize: const Size(230, 60),
      maximumSize: const Size(300, 100),
    );

    return  Container(
        margin: EdgeInsets.all(4),
        child: ButtonTheme(
          minWidth: 300.0,
          height: 500.0,
          child: ElevatedButton(
            style: style,
            onPressed: () {
              print('Pressed');
            },
            child: Text(label),
          ),
        ),
    );
  }
}
