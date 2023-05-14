import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Text(
                "Hey Natashah👋, have you been working with Flutter lately? I've been really interested in learning more about it.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade300),
              child: const Text(
                " Yes imran, I've been using it quite a bit. It's a really powerful framework for building mobile applications.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Text(
                "That's great to hear. I've been looking into it for a while and I've heard a lot of positive things about it. What do you think are some of the main advantages of using Flutter?",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade300),
              child: const Text(
                " Well, one of the biggest advantages is that you can use a single codebase to build both iOS and Android apps. Flutter uses its own rendering engine to create a beautiful, fast, and customizable user interface. It also has a great widget library that allows you to build complex UI elements with ease",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Text(
                "That's really impressive😊. Have you used any third-party packages with Flutter?",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade300),
              child: const Text(
                "Yes 🙋‍♀️, there are a ton of great packages available for Flutter. Some of my favorites are the ones that allow you to integrate with different APIs and services, like Firebase and Google Maps.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Text(
                "That's really cool😎. How about testing? Have you found it easy to write tests for Flutter apps?",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade300),
              child: const Text(
                "Absolutely. Flutter has a built-in testing framework that makes it easy to write unit tests, widget tests, and integration tests. And because everything is written in Dart, it's easy to write and maintain tests alongside your code.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Text(
                "That's really helpful. It sounds like Flutter has a lot of great features and advantages. I'm definitely going to have to give it a try. Thanks for sharing your experience with me, Natashah.✨❤️",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade300),
              child: const Text(
                "No problem, Imran. Let me know if you need any help getting started.😊",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
