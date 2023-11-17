import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice/login/signup.dart';
import 'package:flutter_practice/ui/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Signup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Image.asset('assets/images/app_logo.png', width: 200, height: 200),
    ));
  }
}
