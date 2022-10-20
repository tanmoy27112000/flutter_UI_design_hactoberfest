import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/core/animations/animations.dart';
import 'package:random_anime_quotes/src/features/quotes/data/models/quote.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/state_notifiers/quote_notifier.dart';

class QuoteOptions extends StatelessWidget {
  const QuoteOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const _HeartIconButton(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _QuoteIconButton(
              iconData: Icons.share,
              onPressed: (quoteNotifier, _) => quoteNotifier.share(),
            ),
            _QuoteIconButton(
              iconData: Icons.copy,
              onPressed: (quoteNotifier, quote) => quoteNotifier.copy(quote),
            ),
            _QuoteIconButton(
              iconData: Icons.translate,
              onPressed: (quoteNotifier, quote) =>
                  quoteNotifier.translate(quote),
            ),
            _QuoteIconButton(
              iconData: Icons.refresh_rounded,
              onPressed: (quoteNotifier, _) => quoteNotifier.getQuote(),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuoteIconButton extends ConsumerWidget {
  const _QuoteIconButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final Function(QuoteNotifier, Quote) onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: ref.watch(quoteProvider).whenOrNull(
            data: (quote) => () => onPressed(
                  ref.read(quoteProvider.notifier),
                  quote,
                ),
          ),
      icon: Icon(iconData),
    );
  }
}

class _HeartIconButton extends ConsumerWidget {
  const _HeartIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: ref.watch(quoteProvider).when(
            data: (quote) => IconButton(
              onPressed: () => ref.read(quoteProvider.notifier).like(quote),
              icon: RotateAnimation(
                child: AnimatedScale(
                  scale: quote.liked ? 2 : 1,
                  curve: Curves.bounceInOut,
                  duration: const Duration(milliseconds: 300),
                  child: Icon(
                    quote.liked
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                strokeWidth: 1.5,
                color: Colors.white,
              ),
            ),
          ),
    );
  }
}
