import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/MODELS/flight_model.dart';

import '../Widgets/cutomheader.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({Key? key}) : super(key: key);
  static const routeName = "/flights";

  @override
  Widget build(BuildContext context) {
    List<FlightModel> flights = FlightModel.flightModel;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomHeader(
              title: 'Flights',
            ),
            FlightMasonryGrid(
              width: width,
              flightsModels: flights,
            )
          ],
        ),
      ),
    );
  }
}

class FlightMasonryGrid extends StatelessWidget {
  const FlightMasonryGrid({
    Key? key,
    required this.width,
    this.masonryCardHeight = const [200, 250, 300],
    required this.flightsModels,
  }) : super(key: key);

  final List<FlightModel> flightsModels;
  final List<double> masonryCardHeight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemCount: 7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        itemBuilder: (context, index) {
          FlightModel flight = flightsModels[index];
          return InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             ActivityDetailScreen(activity: flights)));
            },
            child: Column(
              children: [
                Hero(
                  tag: '${flight.id}_${flight.title}',
                  child: Container(
                    height: masonryCardHeight[index % 3],
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(flight.imgUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  flight.title,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        });
  }
}
