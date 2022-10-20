import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/features/quotes/view/liked_quotes_page.dart';
import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

class LikedQuotesOption extends StatelessWidget {
  const LikedQuotesOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        leading: const Icon(
          CupertinoIcons.heart_fill,
          color: Colors.redAccent,
          size: 25,
        ),
        title: Text('My liked quotes', style: context.subtitle2),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Colors.grey,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const LikedQuotesPage()),
        ),
      ),
    );
  }
}
