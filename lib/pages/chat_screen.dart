import 'package:chatapp/widgets/bottom_sheet.dart';
import 'package:chatapp/widgets/chat_samples.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
              padding: EdgeInsets.only(top: 15, left: 5),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                    color: Colors.black,
                  ))),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Imran khatak",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                            fontSize: 15, color: Colors.green.withOpacity(0.6)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 15, right: 20),
              child: Icon(
                CupertinoIcons.videocam,
                size: 30,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                right: 15,
              ),
              child: Icon(
                CupertinoIcons.phone,
                size: 30,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                right: 10,
              ),
              child: Icon(Icons.more_vert, size: 30, color: Colors.black),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 8, left: 8, bottom: 80),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Container(
                  width: 320,
                  // height: 200,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0, bottom: 50),
                        child: Icon(
                          Icons.lock,
                          size: 13,
                          color: Colors.black38,
                        ),
                      ),
                      Text(
                        "Messages and call are end-to-end \nencrypted. No one outside of this chat, not\n even app, can read or listen to them.\n              Tap to learn more.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              ChatSample(),
            ],
          ),
        ),
      ),
      bottomSheet: const ChatBottomBar(),
    );
  }
}
