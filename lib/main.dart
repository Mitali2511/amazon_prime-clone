import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/all_screen.dart';
import 'package:flutter_application_3/view/bottom_navigation.dart';
import 'package:flutter_application_3/view/home_screen.dart';
import 'package:flutter_application_3/view/practice.dart';
import 'package:flutter_application_3/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        
        //useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 51, 166, 232),)
      ),

      home:SplashScreen(),
    );
  }
}

