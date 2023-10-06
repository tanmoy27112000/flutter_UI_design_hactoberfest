import 'package:flutter/material.dart';
import 'package:hotel_app/models/room.dart';

import '../widgets/hotel_packages.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/my_search_bar.dart';
import '../widgets/popular_hotel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<RoomModel> rooms = [
    RoomModel("assets/room1.jpg", "Icha Hotel", "A Four Hotel in Bara ",
        "\$180 / night"),
    RoomModel("assets/room2.jpg", " Hotel Merriot",
        "A Five Hotel star Hotel in Kathmandu ", "\$180 / night"),
    RoomModel("assets/room3.jpg", " Yak and Yati",
        "A Five Hotel star Hotel in Kathmandu ", "\$180 / night"),
    RoomModel("assets/room4.jpg", " Hotel Star",
        "A Five Hotel star Hotel in thamel ", "\$180 / night"),
    RoomModel("assets/room5.jpg", " Hotel youtts",
        "A Five Hotel star Hotel in dehli ", "\$180 / night"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const MyAppBar(),
              const SizedBox(
                height: 20,
              ),
              const MySearchbar(),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Hotel", style: TextStyle(fontSize: 18))),
              const SizedBox(
                height: 20,
              ),
              PopularHotel(rooms: rooms),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Hotel Packages", style: TextStyle(fontSize: 20)),
                  Text("View all", style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              HotelPackages(
                rooms: rooms,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}
