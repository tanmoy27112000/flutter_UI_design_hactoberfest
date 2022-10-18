import 'package:flutter/material.dart';

class EachDayCard extends StatelessWidget {
  final int index;
  final num? dayTemp;
  final num? nightTemp;
  final num? rain;
  final num? uvi;
  final num? clouds;
  final num? pop;
  const EachDayCard(
      {Key? key,
      required this.index,
      this.dayTemp,
      this.nightTemp,
      this.rain,
      this.uvi,
      this.clouds,
      this.pop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.04,
          MediaQuery.of(context).size.height * 0.05,
          MediaQuery.of(context).size.height * 0.02,
          MediaQuery.of(context).size.height * 0.1),
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            child: Text(
              "${index + 1} day later",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 22,
                  fontWeight: FontWeight.w300),
            ),
          ),
          _DayOrNigthTemp(isDay: true, temperature: dayTemp),
          _DayOrNigthTemp(isDay: false, temperature: nightTemp),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SubDetails(
                  title: "Rain",
                  icon: Icons.water,
                  value: rain,
                ),
                _SubDetails(
                  title: "Uvi",
                  icon: Icons.light_mode,
                  value: uvi,
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SubDetails(
                  title: "Cloud",
                  icon: Icons.cloud,
                  value: clouds,
                ),
                _SubDetails(
                  title: "Pop",
                  icon: Icons.water_damage,
                  value: pop,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//--------------------------------------------------------------------------------------------------------
class _DayOrNigthTemp extends StatelessWidget {
  final bool isDay;
  final num? temperature;
  const _DayOrNigthTemp(
      {Key? key, required this.isDay, required this.temperature})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeigth * 0.022),
          child: Image.asset(
            isDay ? "assets/iclear.png" : "assets/moon.png",
            height: screenHeigth * 0.04,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: screenHeigth * 0.020),
          child: Text(
            isDay ? "Day time" : "Nigth time",
            style: const TextStyle(
                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w300),
          ),
        ),
        Text(
          "${temperature == null ? "N/A" : (temperature! - 273.0).toStringAsFixed(0)} \u2103",
          style: const TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w200),
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.032),
          height: MediaQuery.of(context).size.height * 0.002,
          width: MediaQuery.of(context).size.width * 0.2,
          color: Colors.white.withOpacity(0.55),
        ),
      ],
    );
  }
}

//--------------------------------------------------------------------------------------------------------
class _SubDetails extends StatelessWidget {
  final String title;
  final dynamic value;
  final IconData icon;
  const _SubDetails(
      {Key? key, required this.title, this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01),
          child: Icon(
            icon,
            color: Colors.white,
            size: 12,
          ),
        ),
        Text(
          "$title: ${value ?? "N/A"} ",
          style: const TextStyle(
              color: Colors.white, fontSize: 11, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
