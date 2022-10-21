import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          const BoxConstraints(maxHeight: kToolbarHeight, minHeight: 40),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gravy',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.yellow),
          ),
          Flexible(
            child: SizedBox(
              width: 30,
              child: Divider(
                thickness: 3,
                color: Colors.teal.shade200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
