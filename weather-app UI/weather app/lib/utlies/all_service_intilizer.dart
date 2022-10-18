import 'package:apis/modules/current%20weather/controller/current_weather_controller.dart';
import 'package:apis/modules/sevenday%20forcaste/controller/seven_day_forcast_services.dart';
import 'package:get/get.dart';

//Here we initatre all the services.
Future<void> initServices() async {
  await Get.putAsync<CurrentWeatherController>(
      () async => CurrentWeatherController());
  await Get.putAsync<SevenDayForcasteService>(
      () async => SevenDayForcasteService());
}
