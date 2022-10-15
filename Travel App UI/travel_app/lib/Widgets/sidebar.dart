import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar(
      {Key? key,
      required this.height,
      required this.width,
      required this.navigator})
      : super(key: key);
  final double height;
  final double width;
  final GlobalKey<NavigatorState> navigator;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<Map> menu = [
    {'title': '• Activities', 'routeName': '/activities'},
    {'title': '• Hotels', 'routeName': '/hotels'},
    {'title': '• Flights', 'routeName': '/flights'},
    {'title': '• Resturants', 'routeName': '/restaurants'},
  ];

  int sideBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.amber.shade700,
          Colors.amber.shade300,
          Colors.amber.shade700,
        ],
      )),
      child: Column(children: [
        SizedBox(
          height: widget.height * 0.05,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menu.length,
            itemBuilder: (context, index) {
              return RotatedBox(
                quarterTurns: 3,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      sideBarIndex = index;
                    });

                    widget.navigator.currentState!
                        .pushNamed(menu[index]['routeName']);
                  },
                  style: TextButton.styleFrom(minimumSize: const Size(100, 50)),
                  child: Text(
                    menu[index]['title'],
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: (index == sideBarIndex)
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                        letterSpacing: 2),
                  ),
                ),
              );
            })
      ]),
    );
  }
}
