// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hotel_app/models/room.dart';

import '../widgets/Price_row.dart';
import '../widgets/book_now_btn.dart';

class DetailsPage extends StatefulWidget {
  final List<RoomModel> rooms;
  DetailsPage({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isfavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text("Detail".toUpperCase()),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.rooms[0].image),
                    fit: BoxFit.cover)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.rooms[0].title,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 35),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Center(
                                  child: Text("8.4/85 reviews",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isfavorite = !isfavorite;
                              });
                            },
                            icon: isfavorite
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.white,
                                  )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  const Price_row(),
                  const SizedBox(
                    height: 30,
                  ),
                  const BooknowBtn(),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description".toUpperCase(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus sodales blandit. Duis rutrum, odio quis convallis cursus, turpis ex condimentum ex, nec facilisis est sapien at sem. Mauris lorem nisl, tincidunt nec ex in, interdum mattis neque. Nullam eleifend metus et dolor iaculis euismod. Pellentesque cursus imperdiet consectetur. In ut orci vulputate, interdum urna non, pellentesque enim. Ut ut dolor pellentesque, tempus nisi et, vestibulum neque. Sed viverra mollis massa, id bibendum purus vulputate ac. Fusce ornare metus at aliquet euismod. Vestibulum pretium velit venenatis erat faucibus mattis nec a odio. Proin congue nulla sem, ut faucibus justo ultrices eget. Praesent et libero quis odio volutpat cursus non sit amet ante."),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
