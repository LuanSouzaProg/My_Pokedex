import 'package:app_09/pages/home/home_page.dart';
import 'package:app_09/pages/splash_page/splash_screen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/splashPage",
      routes: {
        "/splashPage": (context) => const SplashScreen(),
        "/homePage": (context) => const HomePage()
      },
    );
  }
}