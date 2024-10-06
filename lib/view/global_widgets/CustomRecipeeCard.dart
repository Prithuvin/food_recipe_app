import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Customrecipeecard extends StatelessWidget {
  const Customrecipeecard(
      {super.key,
      required this.rating,
      required this.title,
      required this.imageUrl});
  final String rating;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10)),
                  height: 28,
                  width: 58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorConstant.white,
                        size: 16,
                      ),
                      Text(
                        rating,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: ColorConstant.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: ColorConstant.primaryColor,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          SizedBox(
            width: 162,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(
                  color: ColorConstant.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "12 Ingriedents | 40 min",
              style: TextStyle(
                  color: ColorConstant.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
