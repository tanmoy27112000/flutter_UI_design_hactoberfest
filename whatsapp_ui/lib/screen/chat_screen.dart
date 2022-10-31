// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/chat_dummy_data.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (context, index) =>

                  //Chat Tile

                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 70,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //Profile Picture

                              SizedBox(
                                height: 46,
                                width: 46,
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  backgroundImage:
                                      NetworkImage(dummyData[index].picture),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),

                              //Information like name, time, and chat

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          dummyData[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          dummyData[index].time,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey[500]),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(dummyData[index].message),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff008069),
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
