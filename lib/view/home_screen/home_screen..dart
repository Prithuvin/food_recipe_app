import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/customvideocard/customvideocard.dart';
import 'package:food_recipe_app/view/home_screen/widgets/PopularCreators.dart';
import 'package:food_recipe_app/view/home_screen/widgets/popular_category_card.dart';
import 'package:food_recipe_app/view/home_screen/widgets/recent_recipe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildtitleSection(),
              //#1 sectaion title
              _trendingSection(),
              //#2 section trending now video card custom
              _popularCategorySection(),
              //#3 section popular category
              _RecentRecipeSection(),
              _popularCreators()
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstant.white,
                unselectedLabelColor: ColorConstant.primaryColor,
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstant.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text("Salad"),
                  ),
                  Tab(
                    child: Text("Breakfast"),
                  ),
                  Tab(
                    child: Text("Apetizer"),
                  ),
                  Tab(
                    child: Text("noodle"),
                  ),
                  Tab(
                    child: Text("Lunch"),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 233,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Popularcategorycard(
                      Duration: PopularCategorycard.PopularCategoryList[index]
                          ['duration'],
                      title: PopularCategorycard.PopularCategoryList[index]
                          ['title'],
                      image: PopularCategorycard.PopularCategoryList[index]
                          ["image"]),
                  // itemBuilder: (context, index) => PopularCategorycard(
                  //       image: DummyDb.popularCategorylis[index]['image'],
                  //       title: DummyDb.popularCategoryList[index]['title'],
                  //       duration: DummyDb.popularCategoryList[index]
                  //           ['duration'],
                  //     ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: PopularCategorycard.PopularCategoryList.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _trendingSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstant.primaryColor,
                size: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => customvideocard(
                    imageUrl: DummyDb.trendingNowList[index]['imageurl'],
                    rating: DummyDb.trendingNowList[index]['rating'],
                    Duration: DummyDb.trendingNowList[index]['duration'],
                    title: DummyDb.trendingNowList[index]['title'],
                    Profileurl: DummyDb.trendingNowList[index]['profile_url'],
                    Username: DummyDb.trendingNowList[index]['username'],
                  ), //video card
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.trendingNowList.length),
        )
      ],
    );
  }

  Widget _buildtitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 26,
                color: ColorConstant.black,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: TextField(
            decoration: InputDecoration(
                hintText: " Search recipes",
                hintStyle: TextStyle(
                    color: ColorConstant.lightGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstant.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstant.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstant.lightGrey,
                )),
          ),
        )
      ],
    );
  }
}

// Widget _recentRecipe() => Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
//           child: Row(
//             children: [
//               Text(
//                 "Recent recipe",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Spacer(),
//               Text(
//                 "See All",
//                 style: TextStyle(
//                     color: ColorConstant.primaryColor,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w800),
//               ),
//               Icon(
//                 Icons.arrow_forward,
//                 color: ColorConstant.primaryColor,
//                 size: 15,
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         SizedBox(
//           height: 150,
//           child: ListView.separated(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) => RecentRecipe(
//                     image: DummyDb.RecentRecipe[index]['image'],
//                     title: DummyDb.RecentRecipe[index]['title'],
//                     user: DummyDb.RecentRecipe[index]['user'],
//                   ),
//               separatorBuilder: (context, index) => SizedBox(
//                     width: 16,
//                   ),
//               itemCount: DummyDb.RecentRecipe.length),
//         )
//       ],
//     );
Widget _RecentRecipeSection() {
  return SizedBox(
    height: 259,
    width: 375,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Text(
                "Recent recipe",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                color: ColorConstant.primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 191,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => RecentRecipe(
                    image: DummyDb.RecentRecipe[index]['image'],
                    title: DummyDb.RecentRecipe[index]['title'],
                    username: DummyDb.RecentRecipe[index]['username'],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.RecentRecipe.length),
        )
      ],
    ),
  );
}

Widget _popularCreators() {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 12),
            child: Row(
              children: [
                Text(
                  "Popular creators",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward,
                  color: ColorConstant.primaryColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => PopularCreators(
                      profileimage: DummyDb.RecentRecipe[index]['profileimage'],
                      username: DummyDb.RecentRecipe[index]['username'],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 5,
                    ),
                itemCount: DummyDb.RecentRecipe.length),
          )
        ],
      ),
    ),
  );
}
