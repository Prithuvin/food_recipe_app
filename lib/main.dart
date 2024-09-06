import 'package:flutter/material.dart';
import 'package:food_recipe_app/view/splash_screen/splash_screen.dart';
// import 'package:food_recipe_app/view/start_screen/start_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
