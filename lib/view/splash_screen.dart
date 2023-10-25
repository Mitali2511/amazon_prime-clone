import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/login_screen.dart';
import 'package:lottie/lottie.dart';
// ignore: depend_on_referenced_packages


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(19,  26, 34,1),),
        alignment: Alignment.center,
        child: Lottie.asset('assets/animation/prime.json'),
          
        ),
    );
  }
}
//1 way of images
// Container(
//         alignment: Alignment.center,
//         child: Image.asset('assets/images/download.png',
//         fit: BoxFit.fill,),
//       ),