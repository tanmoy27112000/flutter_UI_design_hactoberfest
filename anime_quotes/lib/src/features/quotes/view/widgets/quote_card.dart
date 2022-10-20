import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';
import 'package:screenshot/screenshot.dart';

import 'package:random_anime_quotes/src/core/animations/animations.dart';
import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

import 'shimmers.dart';

class QuoteCard extends ConsumerWidget {
  const QuoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Screenshot(
      controller: ref.watch(screenshotControllerProvider),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: Theme.of(context).primaryColor,
              ),
              child: const _QuoteBody(),
            ),
          ),
          const Expanded(flex: 1, child: _QuoteFooter()),
        ],
      ),
    );
  }
}

class _QuoteBody extends ConsumerWidget {
  const _QuoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(quoteProvider).when(
          data: (quote) {
            final length = quote.quote.split(' ').length;
            final fontSize = length > 120 ? 12.5 : 34 - (length * 0.1969);

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const TranslateAnimation(
                    x: -250,
                    y: 0,
                    child: Icon(
                      Icons.format_quote_rounded,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    quote.quote,
                    textAlign: TextAlign.center,
                    style: context.headline6.copyWith(
                      color: Colors.white,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(child: QuoteShimmer()),
        );
  }
}

class _QuoteFooter extends ConsumerWidget {
  const _QuoteFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(quoteProvider).when(
          data: (quote) => Column(
            children: [
              Text(
                quote.said,
                textAlign: TextAlign.center,
                style: context.headline1.copyWith(
                  fontSize: 28,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                quote.anime,
                textAlign: TextAlign.center,
                style: context.subtitle2.copyWith(fontSize: 20),
              ),
            ],
          ),
          loading: () => const Center(child: AnimeCharacterShimmer()),
        );
  }
}
