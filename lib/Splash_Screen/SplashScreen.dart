import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yasin/Home_Screen/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: ((context) => HomeScreen())));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        color: Color.fromARGB(255, 168, 240, 241),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width:100,
                  child: Image.asset('assets/logos/y.png')),
                Text(
          'Yasin',
          style: TextStyle(
                  fontSize: 50, fontFamily: 'Dancing-Script',fontWeight: FontWeight.bold, color: Color.fromARGB(255, 4, 225, 221)),
        ),
              ],
            )),
      ),
    );
  }
}