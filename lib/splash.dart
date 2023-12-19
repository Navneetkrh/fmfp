import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset('assets/Indian_Institute_of_Technology_Jodhpur_Logo 1.svg'),
              ),
            ),
            SizedBox(height: 20),
            FadeTransition(
              opacity: _animation,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/fmfp.png'),
              ),
            ),
            SizedBox(height: 20),
            FadeTransition(
              opacity: _animation,
              child: SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset('assets/splashwala.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}