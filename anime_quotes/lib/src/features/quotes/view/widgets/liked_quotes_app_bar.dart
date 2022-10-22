import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';

import 'info_dialog.dart';

class LikedQuotesAppBar extends ConsumerWidget {
  const LikedQuotesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedQuotes = ref.watch(likedQuotesProvider);

    return SliverAppBar(
      floating: true,
      title: const Text('My Liked Quotes'),
      actions: [
        if (likedQuotes.isNotEmpty)
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const InfoDialog(),
              );
            },
            icon: const Icon(Icons.info_outline),
          )
      ],
    );
  }
}
