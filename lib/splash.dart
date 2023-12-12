import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        // add three images here iiitj logo, fmfp logo and splashwala logo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(
            
              height: 200,
              width: 200,
              child: SvgPicture.asset('assets/Indian_Institute_of_Technology_Jodhpur_Logo 1.svg'),
            ),
            SizedBox(
              height: 200,
              width: 200, 

              child: Image.asset('assets/fmfp.png'),
            ),
            SizedBox(
              height: 400,
              width: 800,
              child: SvgPicture.asset('assets/splashwala.svg'),
            ),
          ],
        ),
        
      ),
    );
  }
}