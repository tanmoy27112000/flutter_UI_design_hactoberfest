import 'package:flutter/material.dart';
import 'package:world_time/Services/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScr extends StatefulWidget {
  const LoadingScr({super.key});

  @override
  State<LoadingScr> createState() => _LoadingScrState();
}

class _LoadingScrState extends State<LoadingScr> {
  void SetupTime() async {
    WorldTime instance = WorldTime(
      location: 'Berlin',
      flag: '',
      url: 'Europe/Berlin',
    );
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/2', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    SetupTime();
  }

  @override
  Widget build(BuildContext context) {
    SpinKitPouringHourGlassRefined spinkit;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 145, 145),
      body: Center(
        child: SpinKitWave(
          color: Colors.black,
          size: 50,
        ),
      ),
    );
  }
}
