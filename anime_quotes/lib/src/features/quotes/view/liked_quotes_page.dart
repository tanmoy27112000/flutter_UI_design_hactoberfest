import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LikedQuotesPage extends StatelessWidget {
  const LikedQuotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          LikedQuotesAppBar(),
          LikedQuotesList(),
        ],
      ),
    );
  }
}
