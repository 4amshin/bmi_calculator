import 'package:bmi_calculator/constant/routes.dart';
import 'package:bmi_calculator/screens/confett.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        inputPage: (context) => const InputPage(),
        splashScreen: (context) => const SplashScreen(),
      },
    );
  }
}
