import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/Form/loginScreen.dart';
import 'package:lafyuu/Screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Object? myaccess = access;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Timer(Duration(seconds: 5), () {
      if (myaccess == null) {
        var pushReplacement = Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Login(),
          ),
        );
      } else {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const Homepage(),
          ),
        );
      }
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(
          "assets/images/SplashiconWhite.png",
        ),
      ),
    );
  }
}
