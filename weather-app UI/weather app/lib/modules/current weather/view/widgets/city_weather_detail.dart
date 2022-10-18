import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CityWeatherDetail extends StatelessWidget {
  const CityWeatherDetail({Key? key, this.temperature, this.weatherType})
      : super(key: key);
  final num? temperature;
  final String? weatherType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 22),
      child: Row(
        children: [
          AutoSizeText(
            temperature == null
                ? "N/A"
                : (temperature! - 273.0).toStringAsFixed(0),
            style: const TextStyle(
                fontWeight: FontWeight.w300, color: Colors.white, fontSize: 52),
          ),
          const SizedBox(
            width: 7,
          ),
          const AutoSizeText(
            "\u2103",
            style: TextStyle(
                fontWeight: FontWeight.w200, color: Colors.white, fontSize: 52),
          ),
          const SizedBox(
            width: 12,
          ),
          WeatherIcon(
            weatherCondition: weatherType?.toLowerCase(),
          )
        ],
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final String? weatherCondition;
  const WeatherIcon({Key? key, this.weatherCondition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (weatherCondition == "haze") {
      return const _Icon(iconPath: "assets/ihaze.png");
    } else if (weatherCondition == "smoke") {
      return const _Icon(iconPath: "assets/ismoke.png");
    } else if (weatherCondition == "mist") {
      return const _Icon(iconPath: "assets/imist.png");
    } else if (weatherCondition == "clear") {
      return const _Icon(iconPath: "assets/iclear.png");
    } else if (weatherCondition == "clouds") {
      return const _Icon(iconPath: "assets/icloud.png");
    } else {
      return const _Icon(iconPath: "assets/else.png");
    }
  }
}

class _Icon extends StatelessWidget {
  final String iconPath;
  const _Icon({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath,
      height: MediaQuery.of(context).size.height * 0.05,
      fit: BoxFit.cover,
    );
  }
}
