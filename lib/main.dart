import 'package:flutter/material.dart';
import 'package:netflix_clone/view/splash_screen/splash_screen.dart';
import 'package:netflix_clone/view/username_screen/username_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
