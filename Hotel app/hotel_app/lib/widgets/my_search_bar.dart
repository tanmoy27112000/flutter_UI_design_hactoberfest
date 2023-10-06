import 'package:flutter/material.dart';

//The search bar on the homepage
class MySearchbar extends StatelessWidget {
  const MySearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 10,
              color: Colors.grey.shade500,
              offset: const Offset(-1, 4),
            ),
          ]),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            iconColor: Colors.grey,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search For Hotel',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
