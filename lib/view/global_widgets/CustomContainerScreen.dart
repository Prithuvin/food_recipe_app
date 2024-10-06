import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomContainerScreen extends StatelessWidget {
  const CustomContainerScreen({
    required this.incredientquantity,
    required this.incredientname,
    required this.incredientimage,
    this.havearrow = true,
    super.key,
    this.fit,
    required bool haveArrow,
  });
  final String incredientname;
  final String incredientimage;
  final String incredientquantity;
  final bool havearrow;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      decoration: BoxDecoration(
        color: ColorConstant.lightGrey.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(incredientimage),
                      fit: fit ?? BoxFit.cover)),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              incredientname,
              style: TextStyle(
                color: ColorConstant.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              incredientquantity,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: ColorConstant.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            havearrow
                ? Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(Icons.arrow_forward_outlined),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
