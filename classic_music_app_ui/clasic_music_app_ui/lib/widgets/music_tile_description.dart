import 'package:flutter/material.dart';

class MusicTileDescription extends StatelessWidget {
  const MusicTileDescription({
    super.key,
    this.songName,
    this.artist = '',
    this.duration,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding = EdgeInsets.zero,
  });
  final String? songName, artist, duration;

  final MainAxisAlignment mainAxisAlignment;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            '$artist',
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: theme.textTheme.bodyText2!.copyWith(
                fontSize: 18,
                color: Colors.teal.shade200,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '$songName',
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: const TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.w300,
                letterSpacing: 2),
          ),
          Text(
            '$duration',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: theme.textTheme.bodyText1!
                .copyWith(fontSize: 15, wordSpacing: 3, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
