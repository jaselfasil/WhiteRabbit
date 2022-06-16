import 'dart:async';

import 'package:flutter/material.dart';


import '../Utils/Constants.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor2,
      body:Center(
        child: Image.asset("assets/images/splash.png",fit: BoxFit.fill,),
      ),
    );
  }
  void timeOut() async {
    Timer(Duration(seconds: 1), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
}
