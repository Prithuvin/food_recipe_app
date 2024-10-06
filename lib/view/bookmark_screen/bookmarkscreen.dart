import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/customvideocard/customvideocard.dart';
import 'package:food_recipe_app/view/global_widgets/CustomRecipeeCard.dart';
import 'package:food_recipe_app/view/recipedetails/recipe_details.dart';

class Bookmarkscreen extends StatefulWidget {
  const Bookmarkscreen({super.key});

  @override
  State<Bookmarkscreen> createState() => _BookmarkscreenState();
}

class _BookmarkscreenState extends State<Bookmarkscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Saved recipes",
              style: TextStyle(color: ColorConstant.black),
            ),
            bottom: TabBar(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstant.white,
                unselectedLabelColor: ColorConstant.primaryColor,
                dividerHeight: 0,
                // isScrollable: true,
                // tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstant.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text("video"),
                  ),
                  Tab(
                    child: Text("recipe"),
                  )
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TabBarView(
              children: [_buildVideoCard(), _buildRecipeeTab()],
            ),
          )),
    );
  }

  Widget _buildRecipeeTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: ListView.separated(
          itemBuilder: (context, index) => Customrecipeecard(
                rating: DummyDb.trendingNowList[index]["rating"],
                title: DummyDb.trendingNowList[index]["title"],
                imageUrl: DummyDb.trendingNowList[index]["imageurl"],
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 16,
              ),
          itemCount: DummyDb.trendingNowList.length),
    );
  }

  ListView _buildVideoCard() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        itemBuilder: (context, index) => customvideocard(
              oncardTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Recipedetials(
                        title: DummyDb.trendingNowList[index]["title"],
                        imageurl: DummyDb.trendingNowList[index]["imageurl"],
                        rating: DummyDb.trendingNowList[index]["rating"],
                        image: DummyDb.trendingNowList[index]["profile_url"],
                        username: DummyDb.trendingNowList[index]["username"],
                      ),
                    ));
              },
              rating: DummyDb.trendingNowList[index]["rating"],
              Profileurl: DummyDb.trendingNowList[index]["profile_url"],
              imageUrl: DummyDb.trendingNowList[index]["imageurl"],
              title: DummyDb.trendingNowList[index]["title"],
              Duration: DummyDb.trendingNowList[index]["duration"],
              Username: DummyDb.trendingNowList[index]["username"],
              width: double.infinity,
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: DummyDb.trendingNowList.length);
  }
}

ListView _buildRecipeCard() {
  return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      itemBuilder: (context, index) => customvideocard(
            oncardTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Recipedetials(
                      title: DummyDb.trendingNowList[index]["title"],
                      imageurl: DummyDb.trendingNowList[index]["imageurl"],
                      rating: DummyDb.trendingNowList[index]["rating"],
                      image: DummyDb.trendingNowList[index]["profile_url"],
                      username: DummyDb.trendingNowList[index]["username"],
                    ),
                  ));
            },
            rating: DummyDb.trendingNowList[index]["rating"],
            Profileurl: DummyDb.trendingNowList[index]["profile_url"],
            imageUrl: DummyDb.trendingNowList[index]["imageurl"],
            title: DummyDb.trendingNowList[index]["title"],
            Duration: DummyDb.trendingNowList[index]["duration"],
            Username: DummyDb.trendingNowList[index]["username"],
            width: double.infinity,
          ),
      separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
      itemCount: DummyDb.trendingNowList.length);
}
