import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/start_screen/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => StartScreen()));
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Center(
        child: Image.asset(
            height: 200,
            "assets/image/pngtree-fast-food-logo-png-image_9018328.png"),
      ),
    );
  }
}
