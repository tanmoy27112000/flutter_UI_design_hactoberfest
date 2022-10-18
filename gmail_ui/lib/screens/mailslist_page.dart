import 'package:flutter/material.dart';
import 'package:gmail_ui/main.dart';
import 'package:gmail_ui/modals/mail_card.dart';

import '../widgets/mail_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                          ),
                          onPressed: () {},
                          // size: 13,
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search in emails',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Image.asset(
                              'images/logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Text(
                    'Primary',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                    mailList.length,
                    (int index) {
                      return Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/mail-view');
                          },
                          child: MailTile(
                            name: mailList[index].name,
                            subTitle: mailList[index].subTitle,
                            imageUrl: mailList[index].imageUrl,
                            description: mailList[index].description,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
