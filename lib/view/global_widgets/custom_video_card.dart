import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  double width;
  String imageurl;
  String rating;
  String duration;
  String title;
  String profileimage;
  String username;
  void Function()? onCardTaped;
  CustomVideoCard({
    required this.imageurl,
    this.width = 280,
    required this.rating,
    required this.duration,
    required this.title,
    required this.profileimage,
    required this.username,
    this.onCardTaped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              height: 180,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageurl))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.lightGrey.withOpacity(.3),
                              borderRadius: BorderRadius.circular(10)),
                          height: 28,
                          width: 58,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorConstant.white,
                                size: 14,
                              ),
                              Text(
                                rating, //map creation
                                style: TextStyle(
                                    color: ColorConstant.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: ColorConstant.white,
                          child: Icon(
                            Icons.bookmark_border,
                            color: ColorConstant.black,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue.withOpacity(.8),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.3),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            duration, //map creation
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title, //map creaction
                  style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(profileimage),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  username,
                  style: TextStyle(
                      color: ColorConstant.lightGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
