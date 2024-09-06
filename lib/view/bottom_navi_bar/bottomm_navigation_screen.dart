import 'package:flutter/material.dart';
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
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        backgroundColor: Colors.red,
        onPressed: () {},
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