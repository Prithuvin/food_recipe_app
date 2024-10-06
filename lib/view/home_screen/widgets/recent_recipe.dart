import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
// import 'package:foodrecipes/utils/constants/color_constants.dart';

class RecentRecipe extends StatelessWidget {
  final String image;
  final String title;
  final String username;
  RecentRecipe({
    required this.image,
    required this.title,
    required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 191,
      width: 124,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            height: 124,
            width: 124,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            username,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: ColorConstant.lightGrey),
          )
        ],
      ),
    );
  }
}
