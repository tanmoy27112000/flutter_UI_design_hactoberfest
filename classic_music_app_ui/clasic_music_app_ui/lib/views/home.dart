import 'package:clasic_music_app_ui/widgets/list_item.dart';
import 'package:clasic_music_app_ui/widgets/logo.dart';
import 'package:clasic_music_app_ui/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(flex: 2, child: CustomAppBar()),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.teal,
                child: const Songs(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),

      // wrapping the bar children in safe area so they woun't be too
      //closs to app tool bar.
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [const Logo(), Menu()],
        ),
      ),
    );
  }
}

class Songs extends StatelessWidget {
  const Songs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 7,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const SongsListItem();
      },
      separatorBuilder: (context, index) {
        return const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1,
        );
      },
    );
  }
}
