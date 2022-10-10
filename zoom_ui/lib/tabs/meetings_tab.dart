import 'package:flutter/material.dart';

class MeetingsTab extends StatelessWidget {
  const MeetingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Personal Meeting ID',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '500 200 1456',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Previous Meetings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text('Room Name : ' 'Chandrakant\'s Meeting'),
          subtitle: Text('Joined On :' '10/10/2022'),
        )
        // ListView(
        //   tile: ListTile(
        //     title: Text('Room Name : ' 'Chandrakant\'s Meeting'),
        //     subtitle: Text('Joined On :' '10/10/2022'),
        //   ),
        // ),
      ],
    );
  }
}
