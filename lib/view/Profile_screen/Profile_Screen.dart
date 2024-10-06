import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/customvideocard/customvideocard.dart';
import 'package:food_recipe_app/view/global_widgets/CustomRecipeeCard.dart';
import 'package:food_recipe_app/view/recipedetails/recipe_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My profile",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorConstant.black,
                fontSize: 24),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                ))
          ],
        ),
        body: Column(
          children: [
            _buildProfileImage(),
            _buildData(),
            Divider(),
            _buildTabBar(),
            _buildTabBarView()
          ],
        ),
      ),
    );
  }

  Widget _buildTabBarView() => Expanded(
        child: TabBarView(
          children: [_buildVideoCard(), _buildRecipeeTab()],
        ),
      );

  Widget _buildTabBar() => Column(
        children: [
          TabBar(
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
        ],
      );
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
          itemCount: 10),
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

Widget _buildData() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customdatawidget(
            title: 'Recpiee',
            count: '48',
          ),
          customdatawidget(
            title: 'Videos',
            count: '378',
          ),
          customdatawidget(
            title: 'Followers',
            count: '2K',
          ),
          customdatawidget(
            title: 'Following',
            count: '1K',
          ),
        ],
      ),
    );

Widget _buildProfileImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/3762775/pexels-photo-3762775.jpeg?auto=compress&cs=tinysrgb&w=400'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstant.primaryColor)),
              child: Text(
                "Edit profile",
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Alessandre Jane",
          style: TextStyle(
              color: ColorConstant.black,
              fontWeight: FontWeight.w600,
              fontSize: 14),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: ColorConstant.lightGrey,
              fontWeight: FontWeight.normal,
              fontSize: 12),
        )
      ],
    ),
  );
}

class customdatawidget extends StatelessWidget {
  const customdatawidget({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: ColorConstant.lightGrey,
              fontWeight: FontWeight.normal,
              fontSize: 12),
        ),
        SizedBox(
          height: 2,
        ),
        Text(count,
            style: TextStyle(
                color: ColorConstant.lightbb,
                fontWeight: FontWeight.w600,
                fontSize: 12))
      ],
    );
  }
}
