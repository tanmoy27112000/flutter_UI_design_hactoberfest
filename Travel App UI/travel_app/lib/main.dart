import 'package:flutter/material.dart';
import 'package:travel_app/SCREENS/activity_screen.dart';
import 'package:travel_app/SCREENS/flight_screen.dart';
import 'package:travel_app/SCREENS/hotel_screen.dart';
import 'package:travel_app/SCREENS/restaurant_screen.dart';

import 'Widgets/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App UI',
      initialRoute: '/activities',
      routes: {
        ActivityScreen.routeName: (context) => const ActivityScreen(),
        HotelScreen.routeName: (context) => const HotelScreen(),
        FlightScreen.routeName: (context) => const FlightScreen(),
        RestaurantScreen.routeName: (context) => const RestaurantScreen()
      },
      // home: ActivityScreen(),
      builder: (context, child) {
        return TravelApp(
          navigator: child!.key as GlobalKey<NavigatorState>,
          child: child,
        );
      },
    );
  }
}

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key, required this.child, required this.navigator})
      : super(key: key);
  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  bool isSplash = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: isSplash
          ? buildSplash(context)
          : Row(children: [
              SideBar(
                width: width,
                height: height,
                navigator: widget.navigator,
              ),
              Expanded(child: widget.child)
            ]),
    );
  }

  Container buildSplash(context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.45,
              bottom: MediaQuery.of(context).size.height * 0.1,
              left: 30,
              right: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hidden Treasures of Italy',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 65),
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSplash = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        padding: EdgeInsets.zero,
                        elevation: 0.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'EXPLORE NOW',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ]),
        ),
      );
}
