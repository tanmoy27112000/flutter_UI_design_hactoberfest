import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatefulWidget {
  const StoryPageView({Key? key}) : super(key: key);

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: [
          StoryItem.text(title: "hello world", backgroundColor: Colors.grey),
          StoryItem.pageImage(
              url:"https://www.desktopbackground.org/download/o/2012/04/30/382545_wallpaper-motivational-quote-for-mobile-phones-jpg_736x1252_h.jpg",controller: controller)
        ],
        controller: controller,
        inline: false,
        repeat: false,
      ),
    );
  }
}
