import 'package:flutter/material.dart';

import '../Constants/message_constants.dart';
import '../UI/Colors/custom_colors.dart';
import 'hash_tags.dart';
class MessageAndHash extends StatelessWidget {
  const MessageAndHash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text(
            'Lorem Ipsum dolor limit dummy text is used for text printing and typesetting industry ',
            textAlign: TextAlign.center,
            style: TextStyle(color: CustomColors.grey, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(MessageConstants.hashTags.length,
                    (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                    child: HashTags(
                      tag: MessageConstants.hashTags[index],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
