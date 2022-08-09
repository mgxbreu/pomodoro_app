import 'package:flutter/material.dart';

class RestButton extends StatefulWidget {
  String label;

  RestButton(this.label);

  @override
  State<RestButton> createState() => Button(label);
}

class Button extends State<RestButton> {
  String label;

  Button(this.label);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
       primary: Color.fromARGB(255, 255, 255, 255),
      onPrimary: Color.fromARGB(255, 33, 33, 33),
      elevation: 5,
      textStyle: const TextStyle(fontSize: 20),

      minimumSize: const Size(430, 60),
      maximumSize: const Size(450, 100),
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
              print('Pressed');
            },
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
