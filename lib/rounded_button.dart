import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(this.iconData, this.callback);

  IconData? iconData;

  final void Function() callback;

  void callCallaback() {
    callback();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FloatingActionButton(
        onPressed: () {
          callCallaback();
        },
        backgroundColor: Colors.white,
        child: Icon(
          iconData,
          color: Colors.black,
          size: 36.0,
        ),
      ),
    );
  }
}
