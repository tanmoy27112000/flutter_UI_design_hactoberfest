import 'package:clasic_music_app_ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: CustomAppBar(),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.green,
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
      color: Colors.green,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),

      // wrapping the bar children in safe area so they woun't be too
      //closs to app tool bar.
      child: SafeArea(
        child: Row(
          children: const [
            Logo(),
          ],
        ),
      ),
    );
  }
}
