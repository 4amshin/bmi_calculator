import 'package:bmi_calculator/constant/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? buttonTitle;
  const BottomButton({
    Key? key,
    required this.onTap,
    this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: kBottomContainerHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        color: kBottomContainerColor,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(child: Text(buttonTitle!, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
