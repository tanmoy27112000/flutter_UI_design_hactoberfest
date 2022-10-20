import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';
import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

import 'animated_quote_icon.dart';

class LikedQuoteCard extends ConsumerWidget {
  const LikedQuoteCard(
    this.quote, {
    Key? key,
  }) : super(key: key);

  final Quote quote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        onLongPress: () {
          int? id = ref.read(quoteProvider).whenOrNull(data: (q) => q.id);
          if (id != null && id == quote.id) {
            ref.read(quoteProvider.notifier).like(quote);
          }
          ref.read(likedQuotesProvider.notifier).delete(quote.id);
        },
        onTap: () => ref.read(quoteProvider.notifier).copy(quote),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AnimatedQuoteIcon(),
            Text('${quote.said}\n', style: context.headline6),
          ],
        ),
        subtitle: Column(
          children: [
            Text(
              '"${quote.quote}"\n',
              style: context.subtitle2.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              quote.anime,
              style: context.subtitle1.copyWith(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
