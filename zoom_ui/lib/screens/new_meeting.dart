import 'package:flutter/material.dart';

class NewMeetingScreen extends StatelessWidget {
  const NewMeetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Please wait while we are creating a Meeting for you!',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
