import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lafyuu/features/Form/loginScreen.dart';
import 'package:lafyuu/features/home/homeScreen.dart';
import 'package:lafyuu/features/main_home/main_.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Object? myaccess = access;
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      final prefs = await SharedPreferences.getInstance();
      final myAccessToken = await prefs.get(
        "access_token",
      );

      //  print(myAccessToken);

      if (myAccessToken == null) {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Login(),
          ),
        );
      } else {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => MainHome(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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
