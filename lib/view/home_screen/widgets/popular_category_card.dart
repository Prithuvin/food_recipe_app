import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Popularcategorycard extends StatelessWidget {
  String title;
  String Duration;
  String image;
  Popularcategorycard(
      {super.key,
      required this.Duration,
      required this.title,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 231,
        width: 150,
        child: Stack(
          children: [
            SizedBox(
              height: 231,
              width: 150,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: ColorConstant.lightGrey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 59,
                          ),
                          Center(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: ColorConstant.lightGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Time",
                                  selectionColor: ColorConstant.lightGrey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 15, bottom: 12),
                            child: Row(
                              children: [
                                Text(
                                  Duration,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: ColorConstant.white,
                                  child: Icon(
                                    Icons.bookmark_outline_rounded,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ]))),
            Positioned(
              left: 0,
              right: 0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 55,
              ),
            ),
          ],
        ));
  }
}
