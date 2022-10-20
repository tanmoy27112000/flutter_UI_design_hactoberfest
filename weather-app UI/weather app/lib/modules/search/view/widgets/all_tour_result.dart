import 'package:apis/data/tour.dart';
import 'package:apis/modules/current%20weather/view/current_weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTourResults extends StatelessWidget {
  final List<Tour> listOfTour;
  const AllTourResults({Key? key, required this.listOfTour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: listOfTour.length,
              itemBuilder: (context, index) {
                return _EachCityResultTile(
                  tourDetails: listOfTour[index],
                );
              }),
        ),
      ],
    ));
  }
}

class _EachCityResultTile extends StatelessWidget {
  final Tour tourDetails;

  const _EachCityResultTile({
    Key? key,
    required this.tourDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(() => const WeatherDetail(), arguments: tourDetails);
      },
      child: ListTile(
        title: Text(tourDetails.title,
            style: TextStyle(color: Colors.white.withOpacity(0.8))),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            tourDetails.country,
            style: TextStyle(color: Colors.white.withOpacity(0.6)),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_outlined,
          color: Colors.orange.withOpacity(0.7),
        ),
      ),
    );
  }
}
