import 'package:flutter/material.dart';
import 'package:food_recipe_app/view/CreateRecipe_screen/CreateRecipe_screen.dart';
import 'package:food_recipe_app/view/Notification_screen/Notification_screen.dart';
import 'package:food_recipe_app/view/Profile_screen/Profile_Screen.dart';
import 'package:food_recipe_app/view/bookmark_screen/bookmarkscreen.dart';
import 'package:food_recipe_app/view/home_screen/home_screen..dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int selectedTab = 0;
  List screen = [
    HomeScreen(),
    Bookmarkscreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateRecipeScreen()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: screen[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ]),
    );
  }
}
