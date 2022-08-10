import 'package:flutter/material.dart';
import 'rounded_button.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'bottom_section.dart';

class MiddleSection extends StatefulWidget {
  @override
  State<MiddleSection> createState() => CountDownTimer();
}

class CountDownTimer extends State<MiddleSection> {
  final int _duration = 1500;
  bool _focusMode = false;
  final CountDownController _controller = CountDownController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final buttonGroup = Row(
     
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedButton(Icons.pause, () => _controller.pause()),
        RoundedButton(
            Icons.play_arrow,
            () => _controller.isPaused
                ? _controller.resume()
                : _controller.start()),
        RoundedButton(
          Icons.bolt,
          () => setState(() {
            _focusMode = !_focusMode;
          }),
        ),
      ],
      
    );

    final boltButton = Center(
        child: RoundedButton(
      Icons.bolt,
      () => setState(() {
        _focusMode = !_focusMode;
      }),
    ));

    return Container(
      //  alignment: Alignment.center,
      child: Column(
        children: [
          CircularCountDownTimer(
            duration: _duration,
            initialDuration: 0,
            controller: _controller,
            width: 250,
            height: 250,
            ringColor: Color.fromARGB(255, 228, 3, 3),
            fillColor: Colors.green,
            backgroundColor: Color.fromARGB(255, 208, 0, 0),
            strokeWidth: 20.0,
            strokeCap: StrokeCap.round,
            textStyle: const TextStyle(
                fontSize: 33.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textFormat: CountdownTextFormat.MM_SS,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
          ),
              Container(margin: EdgeInsets.only(top: 15),),
          _focusMode == true
              ? buttonGroup: boltButton,
              Container(margin: EdgeInsets.only(bottom: 15),),
          _focusMode == true
              ? BottomSection(() => _controller.reset())
              : SizedBox(),
        ],
      ),
    );
  }
}
