import 'package:chatapp/pages/chat_screen.dart';
import 'package:chatapp/widgets/chat_tile.dart';
import 'package:chatapp/widgets/story_display.dart';
import 'package:chatapp/widgets/story_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search your chat',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Colors.grey.shade400,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffE4E7EB),
                        ),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "RECENT UPDATE",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400),
              ),
            ),
            const StoryBanner(),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            Expanded(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatPage()));
              },
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/3444087/pexels-photo-3444087.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      title: 'Natashah',
                      subtitle: Text(
                        'Wow looking amazing😍',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '4:12',
                      widget: const Icon(
                        Icons.done_all,
                        color: Colors.blue,
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      title: 'Markuzi Ali',
                      subtitle: Text(
                        'thank you so much 🙌',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '14:12',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/6516347/pexels-photo-6516347.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                      title: 'Zahri K',
                      subtitle: Text(
                        'Typing... ',
                        style: TextStyle(
                            color: Colors.blue.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '5:02',
                      widget: Icon(
                        Icons.check,
                        color: Colors.grey.shade500,
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                      title: 'Luna Maya',
                      subtitle: Text(
                        'Dont forget karoake at 10pm ',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: 'Yesterday',
                      widget: const Icon(
                        Icons.done_all,
                        color: Colors.blue,
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=600',
                      title: 'Isabella',
                      subtitle: Text(
                        'thank you so much 😊',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: 'Yesterday',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/842548/pexels-photo-842548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      title: 'Elijah',
                      subtitle: Text(
                        'Typing... ',
                        style: TextStyle(
                            color: Colors.blue.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '4:12',
                      widget: Icon(
                        Icons.done_all_sharp,
                        color: Colors.grey.shade500,
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600',
                      title: 'Aiden',
                      subtitle: Text(
                        'hy how are you ? ',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '5/10/2023',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/3754259/pexels-photo-3754259.jpeg?auto=compress&cs=tinysrgb&w=600',
                      title: 'Ba Tik',
                      subtitle: Text(
                        'Have a nice day 🌸',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '4/10/2023',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/3754294/pexels-photo-3754294.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                      title: 'Sophia',
                      subtitle: Text(
                        'Typing... ',
                        style: TextStyle(
                            color: Colors.blue.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '4:12',
                      widget: Icon(
                        Icons.check,
                        color: Colors.grey.shade500,
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/2399840/pexels-photo-2399840.jpeg?auto=compress&cs=tinysrgb&w=600',
                      title: 'Vincent',
                      subtitle: Text(
                        'hy how are you ? ',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '13:12',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
                      title: 'Leonardo',
                      subtitle: Text(
                        'thank you so much🙌',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '14:12',
                      widget: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            '23',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  ChatTile(
                      image:
                          'https://images.pexels.com/photos/2777898/pexels-photo-2777898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      title: 'Amelia',
                      subtitle: Text(
                        'Typing... ',
                        style: TextStyle(
                            color: Colors.blue.shade500,
                            fontWeight: FontWeight.w500),
                      ),
                      date: '4:12',
                      widget: Icon(
                        Icons.check,
                        color: Colors.grey.shade500,
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
