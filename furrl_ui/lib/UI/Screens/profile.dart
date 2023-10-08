import 'package:flutter/material.dart';
import 'package:furrl_ui/Constants/named_routes.dart';
import 'package:furrl_ui/CustomWidget/app_bar.dart';
import 'package:furrl_ui/CustomWidget/buttons.dart';
import 'package:furrl_ui/CustomWidget/message_and_hash.dart';
import 'package:furrl_ui/CustomWidget/photo_name.dart';
import 'package:furrl_ui/CustomWidget/post.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Appbar(withBackIcon: true, title: "Kevin's Frame"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: PhotoName(showFollowerCount: false),
          ),
          const MessageAndHash(),
          Post(showProfile: false , image: data),
          const SizedBox(height: 20),
          HollowButton(
              title: 'Edit Frame',
              onPress: () {
                Navigator.pushNamed(context, NamedRoutes.edit);
              })
        ],
      ),
    ));
  }
}
