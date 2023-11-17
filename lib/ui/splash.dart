import 'dart:async';

import 'package:flutter/material.dart';
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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
  });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }


}
