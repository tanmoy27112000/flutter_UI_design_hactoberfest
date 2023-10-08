import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = '';
  String flag = '';
  String time = '';
  String url = '';
  bool isDayTime = true;
  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data['datetime']);
      // print(data['utc_offset']);
      String datetime = data['datetime'];
      DateTime current = DateTime.parse(datetime.substring(0, 26));

      isDayTime = current.hour > 6 && current.hour < 20 ? true : false;
      time = DateFormat.jm().format(current);
    } catch (e) {
      print('Error caught');
      time = "Couldn't fetch a Time ";
    }
  }
}
