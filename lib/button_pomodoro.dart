import 'package:flutter/material.dart';

class PomodoroButton extends StatefulWidget {
  String label;

  bool rest;
  PomodoroButton(this.label, this.rest);

  @override
  State<PomodoroButton> createState() => Button(label, rest);
}

class Button extends State<PomodoroButton> {
  String label;
  bool rest;
  Button(this.label, this.rest);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 255, 255, 255),
      onPrimary: Color.fromARGB(255, 33, 33, 33),
      elevation: 5,
      textStyle: const TextStyle(fontSize: 20),
      minimumSize: const Size(160, 60),
      maximumSize: const Size(160, 100),
    );

    return Container(
      margin: EdgeInsets.all(4),
      child: ButtonTheme(
        minWidth: 300.0,
        height: 500.0,
        child: ElevatedButton(
          style: style,
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(rest == true
                    ? "See you later, alligator 😅"
                    : "Keep up the good work 🔥"),
              ),
            );
          },
          child: Text(label),
        ),
      ),
    );
  }
}
