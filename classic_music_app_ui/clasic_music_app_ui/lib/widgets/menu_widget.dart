import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight * 0.7,
      width: 100,
      color: Colors.yellow,
      alignment: Alignment.center,
      child: PopupMenuButton(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.menu,
              size: 16,
            ),
            SizedBox.square(
              dimension: 5,
            ),
            Text(
              'MENU',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        itemBuilder: (BuildContext context) => menuItems,
      ),
    );
  }

  List<PopupMenuItem<dynamic>> menuItems = [
    PopupMenuItem(
      //value: CloseAction.leave,
      textStyle: const TextStyle(
        color: Colors.black,
      ),
      child: Row(
        children: const [
          Icon(
            Icons.music_note_outlined,
            size: 16,
          ),
          SizedBox.square(
            dimension: 5,
          ),
          Text(
            'SONGS',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    PopupMenuItem(
      //value: CloseAction.leave,
      textStyle: const TextStyle(
        color: Colors.black,
      ),
      child: Row(
        children: const [
          Icon(
            Icons.playlist_add_check_rounded,
            size: 16,
          ),
          SizedBox.square(
            dimension: 5,
          ),
          Text(
            'PLAYLIST',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    PopupMenuItem(
      textStyle: const TextStyle(
        color: Colors.black,
      ),
      child: Row(
        children: const [
          Icon(
            Icons.line_style_rounded,
            size: 16,
          ),
          SizedBox.square(
            dimension: 5,
          ),
          Text(
            'GENRE',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];
}
