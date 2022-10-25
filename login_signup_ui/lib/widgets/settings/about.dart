import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
    leading: Icon(Icons.add_moderator_outlined),
                title: Text('About'),  
  )
  ;
  }
}