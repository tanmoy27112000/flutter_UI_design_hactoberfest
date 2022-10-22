import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Icon(Icons.settings_suggest_outlined),
                title: Text('Settings'),  
  );
  }
}