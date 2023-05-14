import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  String image;
  String title;
  Widget subtitle;
  String date;

  Widget widget;
  ChatTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              image,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subtitle,
                    widget,
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
