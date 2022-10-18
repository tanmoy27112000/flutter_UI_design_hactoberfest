import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AdditionalWeatherDetails extends StatelessWidget {
  final num? realfeel;
  final num? pressure;
  final num? humidity;
  final num? visiblity;

  const AdditionalWeatherDetails(
      {Key? key, this.realfeel, this.pressure, this.humidity, this.visiblity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          _DetailCard(
              title: "Real Feel",
              value: realfeel == null
                  ? "N/A"
                  : (realfeel! - 273.0).toStringAsFixed(0) + "\u2103",
              icon: Icons.thermostat_auto),
          _DetailCard(
              title: "Pressure",
              value: pressure ?? "N/A",
              icon: Icons.air_outlined),
          _DetailCard(
              title: "Humidity",
              value: "${humidity ?? "N/A"} %",
              icon: Icons.water),
          _DetailCard(
              title: "Visiblity",
              value: "${visiblity ?? "N/A"} %",
              icon: Icons.remove_red_eye),
        ],
      ),
    );
  }
}

class _DetailCard extends StatelessWidget {
  final String title;
  final dynamic value;
  final IconData icon;

  const _DetailCard(
      {Key? key, required this.title, required this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenHeigth * 0.025, left: screenWidth * 0.015),
            child: AutoSizeText(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenHeigth * 0.018, left: screenWidth * 0.025),
            child: Icon(
              icon,
              color: Colors.white.withOpacity(0.95),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenHeigth * 0.015, left: screenWidth * 0.025),
            child: AutoSizeText(
              "$value",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
      color: Colors.black.withOpacity(0.1),
    );
  }
}
