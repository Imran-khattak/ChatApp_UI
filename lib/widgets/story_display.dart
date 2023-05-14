import 'package:chatapp/widgets/story_tile.dart';
import 'package:chatapp/widgets/storydata.dart';
import 'package:flutter/material.dart';

class StoryBanner extends StatelessWidget {
  const StoryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    const storyBorderColor = [Color(0xFF9B2282), Color(0xFFEEA863)];
    const white = Color(0xFFFFFFFF);
    const black = Color(0xFF000000);
    const buttonFollowColor = Color(0xFF0494F5);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          border: Border.all(color: black, width: 2),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profile), fit: BoxFit.cover)),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 19,
                          width: 19,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: white),
                          child: const Icon(
                            Icons.add_circle,
                            color: buttonFollowColor,
                            size: 19,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'Your Story',
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: black,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(storys.length, (index) {
              return StoryTile(
                image: storys[index]['image'],
                name: storys[index]['name'],
              );
            }),
          ),
        ],
      ),
    );
  }
}
