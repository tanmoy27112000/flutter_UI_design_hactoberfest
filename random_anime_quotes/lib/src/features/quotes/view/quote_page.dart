import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/constants/constants.dart'
    show appName;

import 'widgets/widgets.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: const [SettingsButton()],
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 2,
            child: QuoteCard(),
          ),
          Expanded(
            flex: 1,
            child: QuoteOptions(),
          )
        ],
      ),
    );
  }
}
