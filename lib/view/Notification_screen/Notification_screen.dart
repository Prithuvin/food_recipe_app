import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.black,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Row(
            children: [
              DefaultTabController(
                length: 3,
                child: TabBar(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: ColorConstant.white,
                    unselectedLabelColor: ColorConstant.primaryColor,
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.center,
                    indicator: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    tabs: [
                      Tab(
                        child: Text("All"),
                      ),
                      Tab(
                        child: Text("Unread"),
                      ),
                      Tab(
                        child: Text("Read"),
                      ),
                    ]),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                NotificationSection(
                  title: "Today",
                  notifications: [
                    NotificationTile(
                      title: "New recipe!",
                      subtitle:
                          "Far far away, behind the word mountains, far from the countries.",
                      isUnread: true,
                    ),
                    NotificationTile(
                      title: "Don't forget to try your saved recipe",
                      subtitle:
                          "Far far away, behind the word mountains, far from the countries.",
                      isUnread: true,
                    ),
                  ],
                ),
                NotificationSection(
                  title: "Yesterday",
                  notifications: [
                    NotificationTile(
                      title: "Don't forget to try your saved recipe",
                      subtitle:
                          "Far far away, behind the word mountains, far from the countries.",
                      isUnread: false,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "You're all set!",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final String title;
  final List<NotificationTile> notifications;

  NotificationSection({required this.title, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Column(children: notifications),
      ],
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isUnread;

  NotificationTile({
    required this.title,
    required this.subtitle,
    this.isUnread = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: Icon(Icons.receipt_long, color: Colors.green),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing:
              isUnread ? Icon(Icons.circle, color: Colors.red, size: 12) : null,
        ),
      ),
    );
  }
}
