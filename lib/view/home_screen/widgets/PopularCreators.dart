import 'package:flutter/material.dart';

class PopularCreators extends StatelessWidget {
  final String profileimage;
  final String username;
  const PopularCreators({
    required this.profileimage,
    required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profileimage),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              username,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
