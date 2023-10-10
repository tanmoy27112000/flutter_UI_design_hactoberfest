import 'package:flutter/material.dart';

// The HomePage appbar
class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello Jude",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                "Find your Favorite Hotel",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/p2.jpg"),
                ),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Colors.grey.shade400,
                    offset: const Offset(-1, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
