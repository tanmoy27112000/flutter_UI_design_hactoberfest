// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CityName extends StatelessWidget {
  final String? name;
  const CityName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          left: MediaQuery.of(context).size.width * 0.1),
      child: AutoSizeText(
        name ?? "N/A",
        style: const TextStyle(color: Colors.white, fontSize: 32),
      ),
    );
  }
}

class WeatherDiscription extends StatelessWidget {
  final String? description;
  const WeatherDiscription({Key? key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          left: MediaQuery.of(context).size.width * 0.039),
      child: AutoSizeText(
        description ?? "N/A",
        style: const TextStyle(
            fontWeight: FontWeight.w300, fontSize: 22, color: Colors.white),
      ),
    );
  }
}
