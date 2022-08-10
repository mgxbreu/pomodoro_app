import 'package:flutter/material.dart';
import "rest.dart";
import "button_pomodoro.dart";

class BottomSection extends StatelessWidget {
  BottomSection(this.callback);

  final void Function() callback;

  void callCallaback() {
    callback();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Container(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PomodoroButton("Motivation", false),
                PomodoroButton("Rest", true),
              ],
            ),
            RestButton("Reset", callback),
          ]),
    ));
  }
}
