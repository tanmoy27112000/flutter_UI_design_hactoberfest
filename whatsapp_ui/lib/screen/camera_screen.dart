import 'package:flutter/material.dart';

class MyCommunityPage extends StatelessWidget {
  const MyCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Divider(
            color: Colors.teal,
            thickness: 3,
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        //* Logo
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.network(
            'https://assets.entrepreneur.com/content/3x2/2000/1669899954-Myproject-1162.jpg',
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        //* Title
        const Text(
          "Introducing Communities",
          style: TextStyle(fontSize: 20.0),
        ),

        //* Sub Title
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: const Text(
            textWidthBasis: TextWidthBasis.longestLine,
            textAlign: TextAlign.center,
            "Easily organise your related groups and send announcements. Now, your communities, like neighbourhoods or schoold, can have their own space",
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),

        const SizedBox(
          height: 8,
        ),

        //* Button
        Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(18),
          ),
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Start Community",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Divider(
            color: Colors.teal,
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
