// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/call_dummy_data.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),

          //Tile to create link for calls

          InkWell(
            onTap: () {},
            child: Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff008069),
                    ),
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Create call link",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text(
                        "Share a link for your WhatsApp call",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "Recent",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 6,
          ),

          // Call log
          Expanded(
            child: ListView.builder(
                itemCount: callDummyData.length,
                itemBuilder: (context, index) =>

                    // Call log tile

                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 14),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 46,
                                        width: 46,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          backgroundImage: NetworkImage(
                                              callDummyData[index].picture),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(callDummyData[index].name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18)),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              callDummyData[index].incomingCall
                                                  ? Icon(
                                                      Icons.call_received,
                                                      color: Color(0xffc70808),
                                                      size: 16,
                                                    )
                                                  : Icon(
                                                      Icons.call_made,
                                                      color: Color(0xffc70808),
                                                      size: 16,
                                                    ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(callDummyData[index].time,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors
                                                          .grey.shade600)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 46,
                                          width: 46,
                                          padding: EdgeInsets.only(right: 6),
                                          child: Icon(
                                            Icons.phone,
                                            color: Color(0xff008069),
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff008069),
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
