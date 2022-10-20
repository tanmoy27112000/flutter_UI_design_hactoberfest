import 'dart:convert';
import 'package:apis/data/local_database.dart';
import 'package:apis/main.dart';
import 'package:apis/data/tour.dart';
import 'package:apis/modules/sevenday%20forcaste/model/seven_day_forcast_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SevenDayForcasteService extends GetxService {
  String accessToken = dotenv.env['API_KEY']!;
//-------------------------------------------------------------------------->
//the function checks if the internet connection is available the fetch data from the API
// If not then check is data availabele in the local storage
//if data is not availabele then It will return null
  Future<SevenDayForcastModel> forCasteData(Tour tourDetail) async {
    if (await InternetConnectionChecker().hasConnection) {
      return getForcastFromAPI(tourDetail);
    } else {
      return LocalStorage.getForcastFromStorage(tourDetail);
    }
  }

//-------------------------------------------------------------------------->
//the function Fetch live data from the API and also updates the Local database
  Future<SevenDayForcastModel> getForcastFromAPI(Tour tourDetail) async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=${tourDetail.latLon["lat"]}&lon=${tourDetail.latLon["lon"]}&exclude=hourly,minutely,current&appid=$accessToken"));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      //update database
      await sharedPreferences.setString(
          "forcast-${tourDetail.city}", response.body);
      // returne API response
      return SevenDayForcastModel.fromJson(data);
    } else {
      throw Exception('Failed to get Daily Updates');
    }
  }
}
