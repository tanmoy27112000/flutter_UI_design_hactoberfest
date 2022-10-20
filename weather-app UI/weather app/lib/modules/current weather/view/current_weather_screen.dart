import 'package:apis/data/tour.dart';
import 'package:apis/modules/current%20weather/controller/current_weather_controller.dart';
import 'package:apis/modules/current%20weather/view/widgets/additional_detail_container.dart';
import 'package:apis/modules/current%20weather/view/widgets/sevenday_forcaste_button.dart';
import 'package:apis/modules/search/view/search_screen.dart';
import 'package:apis/utlies/widgets/loading.dart';
import 'package:apis/modules/current%20weather/model/current_weather_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/city_name_and _description_wigets.dart';
import 'widgets/city_weather_detail.dart';
import 'widgets/screen_background.dart';

class WeatherDetail extends StatefulWidget {
  const WeatherDetail({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  _WeatherDetailState createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  late Future<CurrentWeatherModel?> _fetchDailyWeatherData;
  Tour tourDetail = Get.arguments ?? allTours[0];

  @override
  void initState() {
    _fetchDailyWeatherData =
        Get.find<CurrentWeatherController>().weatherData(tourDetail);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff2e2e2e),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () async {
                  Get.to(const SearchScreen());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: Stack(children: <Widget>[
          FutureBuilder<CurrentWeatherModel?>(
              future: _fetchDailyWeatherData,
              builder: (BuildContext context,
                  AsyncSnapshot<CurrentWeatherModel?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Loading();
                }
                if (snapshot.data == null) {
                  return const Loading(
                    msg:
                        "Something Went Wrong Please Try again with an active internet Connection",
                  );
                } else {
                  return Stack(children: [
                    ScreenBackground(
                      weatherType: snapshot.data!.weather![0].main
                          .toString()
                          .toLowerCase(),
                    ),
                    Container(
                        color: Colors.black.withOpacity(0.19),
                        width: double.infinity,
                        height: double.infinity),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CityName(
                          name: tourDetail.title,
                        ),
                        SevenDayForcasteButton(tourDetail: tourDetail),
                        CityWeatherDetail(
                          temperature: snapshot.data?.main?.temp,
                          weatherType: snapshot.data?.weather?[0].main,
                        ),
                        WeatherDiscription(
                          description: snapshot.data?.weather?[0].description,
                        ),
                        AdditionalWeatherDetails(
                          humidity: snapshot.data?.main?.humidity,
                          realfeel: snapshot.data?.main?.feelsLike,
                          pressure: snapshot.data?.main?.pressure,
                          visiblity: snapshot.data?.visibility,
                        )
                      ],
                    ),
                  ]);
                }
              }),
        ]),
      ),
    );
  }
}
