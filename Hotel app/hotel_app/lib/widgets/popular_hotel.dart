import 'package:flutter/material.dart';

import '../models/room.dart';

class PopularHotel extends StatelessWidget {
  const PopularHotel({
    super.key,
    required this.rooms,
  });

  final List<RoomModel> rooms;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Container(
              height: 200,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(rooms[index].image),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(rooms[index].title),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              rooms[index].subtitle,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  rooms[index].price,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: Colors.blue,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
