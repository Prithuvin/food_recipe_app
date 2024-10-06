import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.onButtonTapped,    this.height,
    this.width,
    this.fontSize,

  });
  final String text;
  final void Function()? onButtonTapped;
  final double? height;
  final double? width;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTapped,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: ColorConstant.white,
                fontSize: fontSize ?? 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.primaryColor),
      
        ),
      
    );
  }
}
