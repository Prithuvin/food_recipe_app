import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class customvideocard extends StatelessWidget {
  double width;
  String rating;
  String title;
  String Profileurl;
  String imageUrl;
  String Username;
  String Duration;
  void Function()? oncardTap;
  customvideocard(
      {super.key,
      this.width = 280,
      required this.rating,
      required this.title,
      required this.Profileurl,
      required this.imageUrl,
      required this.Username,
      required this.Duration,
      this.oncardTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardTap,
      child: SizedBox(
        height: 254,
        width: width,
        child: Column(
          children: [
            Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageUrl))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.lightGrey.withOpacity(.3),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorConstant.white,
                              ),
                              Text(
                                rating,
                                style: TextStyle(
                                    color: ColorConstant.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: ColorConstant.white,
                            child: Icon(Icons.bookmark_outline),
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: ColorConstant.lightGrey.withOpacity(.3),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorConstant.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.lightGrey.withOpacity(.3),
                          ),
                          child: Text(
                            Duration,
                            style: TextStyle(
                              color: ColorConstant.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(Profileurl),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(Username)
              ],
            )
          ],
        ),
      ),
    );
  }
}
