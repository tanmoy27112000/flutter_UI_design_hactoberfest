import 'package:flutter/material.dart';
import 'package:world_time/Services/worldTime.dart';

class LocationScr extends StatefulWidget {
  const LocationScr({super.key});

  @override
  State<LocationScr> createState() => _LocationScrState();
}

class _LocationScrState extends State<LocationScr> {
  List<WorldTime> locations = [
    WorldTime(location: 'Kolkata', flag: 'india.png', url: 'Asia/Kolkata'),
    WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Karachi', flag: 'pakistan.jpeg', url: 'Asia/Karachi'),
    WorldTime(
        location: 'Sydney', flag: 'australia.jpeg', url: 'Australia/Sydney'),
    WorldTime(
        location: 'Buenos Aires',
        flag: 'argentina.png',
        url: 'America/Argentina/Buenos_Aires'),
    WorldTime(
        location: 'Johannesburg',
        flag: 'south africa.png',
        url: 'Africa/Johannesburg'),
    WorldTime(location: 'Paris', flag: 'france.png', url: 'Europe/Paris'),
    WorldTime(location: 'Warsaw', flag: 'poland.png', url: 'Europe/Warsaw'),
  ];
  void UpdateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 240, 161, 161),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  UpdateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('Assets/${locations[index].flag}')),
              ),
            ),
          );
        },
      ),
    );
  }
}
