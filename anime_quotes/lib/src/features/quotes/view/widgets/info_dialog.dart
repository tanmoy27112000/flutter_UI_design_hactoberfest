import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      actionsAlignment: MainAxisAlignment.center,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'I-It\'s not that I want to help you or anything,'
            '\tI just had nothing else to do...',
            style: context.subtitle2
                .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          Text(
            '\tOn Tap : Copy Quote',
            style: context.subtitle2,
          ),
          Text(
            '\tOn Long Press: Delete Quote',
            style: context.subtitle2,
          ),
          const SizedBox(height: 10),
          Text(
            'You had better be grateful!',
            style: context.subtitle2
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('assets/images/tsundere.png'),
              const Text(
                'Press outside to dissmiss, b-baka!',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
