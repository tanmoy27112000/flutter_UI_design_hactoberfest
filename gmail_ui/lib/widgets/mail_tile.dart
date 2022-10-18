import 'package:flutter/material.dart';

class MailTile extends StatelessWidget {
  final String name;
  final String subTitle;
  final String imageUrl;
  final String description;
  const MailTile({
    Key? key,
    required this.name,
    required this.subTitle,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(
        vertical: 4,
      ),
      contentPadding: EdgeInsets.all(0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            subTitle,
          ),
        ],
      ),
      subtitle: Text(
        description,
      ),
      leading: CircleAvatar(
        radius: 25,
        child: ClipOval(
          child: Image.asset(
            ('images/logo.png'),
          ),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            '15 Oct',
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.star_border,
          //     size: 18,
          //   ),
          // ),
        ],
      ),
    );
  }
}
