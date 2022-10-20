import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:random_anime_quotes/src/features/settings/view/settings_bottom_sheet.dart';

class SettingsButton extends HookWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 650),
      reverseDuration: const Duration(milliseconds: 400),
    );

    return IconButton(
      padding: const EdgeInsets.only(),
      onPressed: () {
        showModalBottomSheet(
          transitionAnimationController: animationController,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          builder: (_) => const SettingsBottomSheet(),
        );
      },
      icon: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.short_text_sharp,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
