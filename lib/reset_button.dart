import 'package:flutter/material.dart';

class RestButton extends StatefulWidget {
  String label;

  RestButton(this.label, this.callback);
  final void Function() callback;

  void callCallaback() {
    callback();
  }

  @override
  State<RestButton> createState() => Button(label, callback);
}

class Button extends State<RestButton> {
  String label;
  final void Function() callback;

  void callCallaback() {
    callback();
  }

  Button(this.label, this.callback);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
       primary: Color.fromARGB(255, 255, 255, 255),
      onPrimary: Color.fromARGB(255, 33, 33, 33),
      // elevation: 5,
      textStyle: const TextStyle(fontSize: 20),
      minimumSize: const Size(330, 60),
      maximumSize: const Size(330, 100),
    );

    return Center(
      child: Container(
        margin: EdgeInsets.all(4),
        child: ButtonTheme(
          minWidth: 300.0,
          height: 500.0,
          child: ElevatedButton(
            style: style,
            onPressed: () {
              callCallaback();
            },
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
