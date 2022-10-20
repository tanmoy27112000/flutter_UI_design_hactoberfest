import 'package:clasic_music_app_ui/views/player.dart';
import 'package:flutter/material.dart';

import 'music_tile_description.dart';

class SongsListItem extends StatelessWidget {
  const SongsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Player(),
            ));
      },
      child: Container(
        height: 100,
        width: mediaQuery.size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.only(bottom: 15, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 2,
              child: MusicTileDescription(
                songName: 'Blinding lights',
                artist: 'The Weekend',
                duration: '05:00',
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),

            // horizontal spacing
            const SizedBox.square(
              dimension: 15,
            ),

            // song art
            Card(
              elevation: 20,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
              ),
              clipBehavior: Clip.antiAlias,
              child: const Image(
                image: AssetImage('assets/images/weekend.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
