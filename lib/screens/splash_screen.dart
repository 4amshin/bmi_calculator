import 'dart:async';

import 'package:bmi_calculator/constant/constant.dart';
import 'package:bmi_calculator/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil(inputPage, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBottomContainerColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 270),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/bmi.png'),
                  ),
                  const SizedBox(height: 10),
                  const SpinKitSpinningLines(
                    color: Colors.white,
                    size: 35.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            child: Column(
              children: const [
                Text(
                  'Tugas UAS Rely Arfadillah',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
                // Text(
                //   '2004411285',
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 13,
                //       fontWeight: FontWeight.w500),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
