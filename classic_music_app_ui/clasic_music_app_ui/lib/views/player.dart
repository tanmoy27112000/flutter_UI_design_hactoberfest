import 'package:clasic_music_app_ui/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(child: PlayerBar()),
              Expanded(flex: 6, child: PlayerGallery()),
              Expanded(flex: 2, child: Controls())
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerBar extends StatelessWidget {
  const PlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Text(
          'The Weekend',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Colors.black45, fontSize: 18),
        ),
      ),
    );
  }
}

class PlayerGallery extends StatelessWidget {
  const PlayerGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      child: Column(
        children: [
          const Expanded(flex: 4, child: CustomCarousel()),
          Expanded(child: musicTitle()),
          Expanded(child: progressIndicator(mediaQuery.size.width))
        ],
      ),
    );
  }

  Widget musicTitle() {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: const Text(
        '"Blinding Lights"',
        style: TextStyle(color: Colors.black45, fontSize: 18),
      ),
    );
  }

  Widget progressIndicator(double width) {
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          LinearPercentIndicator(
            percent: 0.2,
            lineHeight: 100,
            padding: EdgeInsets.zero,
            width: width,
            backgroundColor: Colors.yellow.shade50,
            progressColor: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('05:00'), Text('-02:10')],
            ),
          )
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
      child: Row(
        children: [
          Expanded(
              child: Center(
            child: controlBtn(
              icon: Icons.fast_rewind_rounded,
            ),
          )),
          const VerticalDivider(),
          Expanded(
              child: Center(
            child: controlBtn(
              icon: Icons.pause_rounded,
            ),
          )),
          const VerticalDivider(),
          Expanded(
              child: Center(
            child: controlBtn(
              icon: Icons.fast_forward_rounded,
            ),
          ))
        ],
      ),
    );
  }

  Widget controlBtn({required IconData icon}) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
