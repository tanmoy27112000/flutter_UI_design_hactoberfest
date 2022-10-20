import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';

import 'liked_quote_card.dart';

class LikedQuotesList extends ConsumerWidget {
  const LikedQuotesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedQuotes = ref.watch(likedQuotesProvider);

    return SliverList(
      delegate: SliverChildListDelegate(
        likedQuotes.isNotEmpty
            ? likedQuotes.map((quote) => LikedQuoteCard(quote)).toList()
            : [
                const Center(
                  child: Text(
                    'Here you can see the phrases you liked, for now it\'s still empty.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
      ),
    );
  }
}
