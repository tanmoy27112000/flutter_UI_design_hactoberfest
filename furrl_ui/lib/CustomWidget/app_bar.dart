import 'package:flutter/material.dart';
import 'package:furrl_ui/Constants/named_routes.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';

class Appbar extends StatelessWidget {
  final bool withBackIcon;
  final String title;
  const Appbar({Key? key, required this.withBackIcon, required this.title})
      : super(key: key);
  final double iconSize = 40;
  final Color iconColor = CustomColors.grey;
  final TextStyle textStyle =
      const TextStyle(color: CustomColors.purple, fontSize: 36);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            withBackIcon
                ? Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .popUntil(ModalRoute.withName(NamedRoutes.home));
                          },
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 15),
                      Text(title,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  )
                : Text(title, style: textStyle),
            Row(
              children: [
                Icon(Icons.search, size: iconSize, color: iconColor),
                Icon(Icons.bookmark_border, size: iconSize, color: iconColor),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(Icons.shopping_bag_outlined,
                        size: iconSize, color: iconColor),
                    const CircleAvatar(
                      radius: 9,
                      backgroundColor: CustomColors.purple,
                      child: Text(
                        '12',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
