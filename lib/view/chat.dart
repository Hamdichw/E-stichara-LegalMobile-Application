import 'package:estichara/utils/const.dart';
import 'package:flutter/material.dart';

import '../utils/widgets/Active_Chat.dart';
import '../utils/widgets/Recent_chat.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                      width: 70,
                      height: 70,
                      image: AssetImage("assets/images/logo.png")),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.19,
                  ),
                  Text(
                    "Messages",
                    style: TextStyle(
                        color: btncolor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 216, 216),
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              ActiveChat(),
              RecentChat()
            ],
          ),
        ),
      ),
    );
  }
}