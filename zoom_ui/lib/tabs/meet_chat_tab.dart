import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/new_meeting.dart';
import 'package:zoom_ui/screens/video_call_screen.dart';
import 'package:zoom_ui/widgets/custom_button.dart';
import 'package:zoom_ui/widgets/home_meeting_button.dart';
import 'package:zoom_ui/widgets/search_bar.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBar(
          text: 'Search',
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewMeetingScreen(),
                  ),
                );
              },
              text: 'New meeting',
              icon: Icons.videocam,
            ),
            HomeMeetingButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VideoCallScreen(),
                  ),
                );
              },
              text: 'Join',
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Schedule',
              icon: Icons.calendar_today,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward,
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/meeting_screen.png',
                  ),
                  const Text(
                    'Find People and Start Chatting!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: CustomButton(
                      text: 'Add Contacts',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
