import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {
  String image;
  String name;
  StoryTile({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    const storyBorderColor = [Color(0xFF9B2282), Color(0xFFEEA863)];
    const white = Color(0xFFFFFFFF);
    const black = Color(0xFF000000);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 67,
            width: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: storyBorderColor,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            name,
            style: TextStyle(
                overflow: TextOverflow.ellipsis, color: black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
