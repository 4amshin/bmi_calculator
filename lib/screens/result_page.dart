import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant/constant.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var _controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    _controller =
        ConfettiController(duration: const Duration(milliseconds: 100));
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
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text(
              "Kalkulator BMI",
              style: kTitleText,
            ),
            backgroundColor: kAppBackgroundColor,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text("Hasil", style: kTitleTextStyle),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        widget.bmiResult.toUpperCase(),
                        style: kBMITextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          widget.interpretation.toUpperCase(),
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                  buttonTitle: "HITUNG-ULANG",
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
        widget.resultText.toUpperCase() == "NORMAL"
            ? ConfettiWidget(
                confettiController: _controller,
                blastDirection: pi / 2,
                emissionFrequency: 1,
                gravity: 0.06,
              )
            : Container(),
      ],
    );
  }
}
