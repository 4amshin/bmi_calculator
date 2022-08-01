import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPressed;
  const ReusableCard({
    Key? key,
    required this.color,
    this.cardChild,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
