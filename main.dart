import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cv.dart';
import 'json.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber, primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.deepPurpleAccent))),
      home: AnimatedSplashScreen(
          backgroundColor: Colors.brown,
          splashIconSize: 500,
          splashTransition: SplashTransition.rotationTransition,
          splash: const Image(
              image: AssetImage(
            "images/universiapolis.jpg",
          )),
          nextScreen: const MyHome()),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TestJson();
  }
}
