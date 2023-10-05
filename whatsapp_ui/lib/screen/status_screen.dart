// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/chat_dummy_data.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 6,
              ),

              // Tile to add status

              Container(
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      width: 48,
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrOOkIqmj4jk6D5hCKSIuuJ6sbvFptfGbrmg&usqp=CAU"),
                          ),
                          Positioned(
                            height: 60,
                            right: 3,
                            child: Container(
                              height: 18,
                              width: 18,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Container(
                                height: 16,
                                width: 16,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Color(0xff008069),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "My status",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Text(
                            "Tap to add status update",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      "Viewed updates",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                 /* const SizedBox(height: 170),
                  Center(
                    child: Text(
                      "No status to view",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: dummyData.length,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: () {},
                                child: ListTile(
                                  //* Image
                                  leading: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.teal,
                                        width: 4,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundImage: NetworkImage(
                                          dummyData[index].picture.toString(),
                                      ),
                                    ),
                                  ),

                                  //* Title Name
                                  title: Text(
                                    dummyData[index].name.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),

                                  //* Message
                                  subtitle: Text(
                                    dummyData[index].time.toString(),

                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),

                                  // //* Time
                                  // trailing: Text(
                                  //   info[index]['time'].toString(),
                                  //   style: const TextStyle(fontSize: 13, color: Colors.grey),
                                  // ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 46,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white70,
                child: const Icon(
                  Icons.camera,
                  color: Color(0xff008069),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xff008069),
              child: const Icon(
                Icons.photo_camera,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
