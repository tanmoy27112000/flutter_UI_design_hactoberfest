import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  const Invite({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Icon(Icons.person_add_alt_outlined ),
                title: Text('Invite'),  
  );
  }
}