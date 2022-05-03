import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed("/homePage"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121517),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/splash_screen/pokemon-23-logo-png-transparent.png", width: 300, height: 300,),
            Image.asset("assets/splash_screen/PikPng.com_charizard-png_336034.png", width: 200, height: 200,),
          ],
        ),
      ),
    );
  }
}