import 'package:flutter/material.dart';
import 'package:zoom_ui/widgets/home_meeting_button.dart';
import 'package:zoom_ui/widgets/search_bar.dart';

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SearchBar(
          text: 'Search Contacts',
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'My Contacts',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text('No Contacts to Display!'),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
