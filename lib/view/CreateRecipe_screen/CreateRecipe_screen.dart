import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/CreateRecipe_screen/widget/CustomIngriedent.dart';
import 'package:food_recipe_app/view/global_widgets/CustomButton.dart';
import 'package:food_recipe_app/view/global_widgets/CustomContainerScreen.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorConstant.white,
        actions: [
          Icon(
            Icons.more_horiz,
            color: ColorConstant.black,
            size: 25,
          ),
          SizedBox(
            width: 13,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create recipe",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.black),
              ),
              SizedBox(
                height: 12,
              ),
              Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/271715/pexels-photo-271715.jpeg?auto=compress&cs=tinysrgb&w=400"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            ColorConstant.lightGrey.withOpacity(.3),
                        child: Icon(
                          Icons.play_arrow,
                          color: ColorConstant.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: ColorConstant.white,
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedEdit02,
                          size: 20,
                          color: ColorConstant.primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Cooking ideas for you",
                  hintStyle: TextStyle(color: ColorConstant.lightGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstant.primaryColor, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstant.primaryColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstant.primaryColor, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomContainerScreen(
                haveArrow: true,
                fit: BoxFit.scaleDown,
                incredientquantity: '01',
                incredientimage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTouRdPOb86gv62drlwhfBZzPQQk9IxIjyNgA&s',
                incredientname: 'Serves',
              ),
              SizedBox(
                height: 10,
              ),
              CustomContainerScreen(
                  haveArrow: true,
                  // incredientQuantity: "45 mins",
                  // incredientName: "Cook time",
                  // incredientImage: "assets/image/clock (1).png",
                  fit: BoxFit.scaleDown,
                  incredientquantity: '45 min',
                  incredientname: 'cookin time',
                  incredientimage:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVVWq3NdGGfiS9EuCcOSlVMLIPssXai7BE2Q&s'),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  customIngerdientstextfiels(),
                  SizedBox(
                    height: 16,
                  ),
                  customIngerdientstextfiels(),
                  SizedBox(
                    height: 16,
                  ),
                  customIngerdientstextfiels(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '+ Add new Ingredient',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    fontSize: 16,
                    text: "Save my recipes",
                    height: 50,
                    width: double.infinity,
                    onButtonTapped: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
