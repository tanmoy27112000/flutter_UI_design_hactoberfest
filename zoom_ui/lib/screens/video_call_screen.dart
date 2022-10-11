import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/new_meeting.dart';
import 'package:zoom_ui/utils/colors.dart';
import 'package:zoom_ui/widgets/custom_button.dart';
import 'package:zoom_ui/widgets/meeting_options.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: const Text(
          'Join a Meeting',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
            child: TextField(
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: secondaryBackgroundColor,
                filled: true,
                border: InputBorder.none,
                hintText: 'Room ID',
                contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
            child: TextField(
              // controller: nameController ,
              maxLines: 1,
              textAlign: TextAlign.center,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: secondaryBackgroundColor,
                filled: true,
                border: InputBorder.none,
                hintText: 'Name',
                contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
            child: CustomButton(
              text: 'Join',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewMeetingScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'JOIN OPTIONS',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const MeetingOption(
            text: 'Don\'t Connect To Audio',
            isMute: true,
          ),
          const MeetingOption(
            text: 'Turn Off My Video',
            isMute: true,
          ),
        ],
      ),
    );
  }
}

class TestingElevated extends StatelessWidget {
  const TestingElevated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewMeetingScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: buttonColor),
        ),
      ),
      //  color: buttonColor,
      child: const InkWell(
        // onTap: ({Navigator.push(context, MaterialPageRoute(builder: NewMeetingScreen()))}),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Join ',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
