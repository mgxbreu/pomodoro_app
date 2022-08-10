import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        bottom: 20
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "POMODORO TIMER",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 35),
          ),
          Text(
            "Focus your work and don't be distracted for only 25 minutes.",
            style: TextStyle(
                color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
