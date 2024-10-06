import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class customIngerdientstextfiels extends StatelessWidget {
  const customIngerdientstextfiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Item name",
              hintStyle: TextStyle(color: ColorConstant.lightGrey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Quantity",
              hintStyle: TextStyle(color: ColorConstant.lightGrey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstant.lightGrey, width: 1),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        HugeIcon(
            size: 29,
            icon: HugeIcons.strokeRoundedRemoveSquare,
            color: ColorConstant.black),
      ],
    );
  }
}
