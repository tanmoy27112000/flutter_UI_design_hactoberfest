import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String text;
  const SearchBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: SizedBox(
        height: 45,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 52, 52, 52),
            hintText: text,
            hintStyle: const TextStyle(fontSize: 17),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIconColor: const Color.fromARGB(255, 129, 119, 119),
            prefixIcon: const Icon(
              Icons.search,
              size: 22,
              color: Color.fromARGB(255, 129, 119, 119),
            ),
          ),
        ),
      ),
    );
  }
}
