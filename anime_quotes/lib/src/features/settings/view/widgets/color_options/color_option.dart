import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/features/settings/logic/providers.dart';

class ColorOption extends ConsumerWidget {
  const ColorOption(this.color, {Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeColor = ref.watch(themeColorProvider);

    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () => ref.read(themeColorProvider.notifier).setThemeColor(color),
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: color,
        ),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: themeColor == color ? 1 : 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Theme.of(context).cardColor.withOpacity(0.5),
              ),
              child: const Icon(CupertinoIcons.checkmark_alt, size: 20),
            ),
          ),
        ),
      ),
    );
  }
}
