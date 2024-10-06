import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/global_widgets/CustomButton.dart';
import 'package:food_recipe_app/view/global_widgets/CustomContainerScreen.dart';

class Recipedetials extends StatelessWidget {
  final String title;
  final String imageurl;
  final String rating;
  final String image;
  final String username;
  const Recipedetials(
      {required this.title,
      required this.rating,
      required this.image,
      required this.imageurl,
      required this.username,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.more_horiz,
            color: ColorConstant.black,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              _buildtitlesection(),
              _Buildcontainersection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildtitlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(imageurl), fit: BoxFit.cover)),
          child: Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: ColorConstant.lightGrey.withOpacity(.3),
              child: Icon(
                Icons.play_arrow,
                color: ColorConstant.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
            SizedBox(
              width: 5,
            ),
            Text(rating,
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstant.black,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 5),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                  color: ColorConstant.lightGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstant.black,
                        fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        color: ColorConstant.primaryColor, size: 16),
                    SizedBox(
                      width: 7,
                    ),
                    Text("Bali, Indonesia",
                        style: TextStyle(
                            color: ColorConstant.lightGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: "Follow",
              onButtonTapped: () {},
            )
          ],
        ),
      ],
    );
  }
}

Widget _Buildcontainersection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      Row(
        children: [
          Text(
            'Ingredients',
            style: TextStyle(
              color: ColorConstant.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(
            DummyDb.IngriedentData.length.toString(),
            style: TextStyle(
              color: ColorConstant.lightGrey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Item",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorConstant.lightGrey),
          )
        ],
      ),
      SizedBox(height: 13),
      SizedBox(
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => CustomContainerScreen(
                  incredientimage: DummyDb.IngriedentData[index]
                      ["ingriedentimage"],
                  incredientname: DummyDb.IngriedentData[index]
                      ["ingriedentname"],
                  incredientquantity: DummyDb.IngriedentData[index]
                      ["ingriedentquantity"],
                       haveArrow: true,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
            itemCount: DummyDb.IngriedentData.length),
      )
    ],
  );
}
