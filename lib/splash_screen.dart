import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_one/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 0),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  key: _scaffoldKey,
        // backgroundColor: Colors.white,
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background_iOS.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Image.asset('images/logoA.png'),
          ),
        ),
      ],
    ));
  }
}
