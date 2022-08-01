import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ConfettiTest extends StatefulWidget {
  const ConfettiTest({Key? key}) : super(key: key);

  @override
  State<ConfettiTest> createState() => _ConfettiTestState();
}

class _ConfettiTestState extends State<ConfettiTest> {
  var _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 3));
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                if (isPlaying) {
                  _controller.stop();
                } else {
                  _controller.play();
                }

                isPlaying = !isPlaying;
              },
              color: Colors.deepPurple,
              child: const Text('Test'),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: pi / 2,
        ),
      ],
    );
  }
}
