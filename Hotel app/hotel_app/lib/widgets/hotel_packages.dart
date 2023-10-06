import 'package:flutter/material.dart';

import '../models/room.dart';

class HotelPackages extends StatelessWidget {
  const HotelPackages({
    super.key,
    required this.rooms,
  });

  final List<RoomModel> rooms;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Colors.grey.shade400,
                    offset: const Offset(-1, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(rooms[index].image),
                        )),
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(rooms[index].title),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    rooms[index].subtitle,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    rooms[index].price,
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Icon(Icons.car_repair,
                                            color: Colors.blue, size: 20),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.shopping_basket,
                                            color: Colors.blue, size: 20),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.wine_bar,
                                            color: Colors.blue, size: 20),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.wifi,
                                            color: Colors.blue, size: 20),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 50,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                  child: const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Book",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                ),
                              ),
                            ],
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
