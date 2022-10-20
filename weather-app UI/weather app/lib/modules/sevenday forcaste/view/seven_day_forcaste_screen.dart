import 'package:apis/data/tour.dart';
import 'package:apis/modules/sevenday%20forcaste/controller/seven_day_forcast_services.dart';
import 'package:apis/modules/sevenday%20forcaste/model/seven_day_forcast_model.dart';
import 'package:apis/utlies/ui_constant.dart';
import 'package:apis/utlies/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/seven_day_forcaste_widgets.dart';

class SevenDayForcasteScreen extends StatefulWidget {
  const SevenDayForcasteScreen({Key? key}) : super(key: key);

  @override
  _SevenDayForcasteScreenState createState() => _SevenDayForcasteScreenState();
}

class _SevenDayForcasteScreenState extends State<SevenDayForcasteScreen> {
  late Future<SevenDayForcastModel> _fetchSevedayForcaste;
  Tour tourDetail = Get.arguments;
  @override
  void initState() {
    _fetchSevedayForcaste =
        Get.find<SevenDayForcasteService>().forCasteData(tourDetail);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Back to Home",
          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 19),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FutureBuilder<SevenDayForcastModel>(
          future: _fetchSevedayForcaste,
          builder: (BuildContext context,
              AsyncSnapshot<SevenDayForcastModel> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loading();
            } else {
              List result = snapshot.data?.daily ?? [];
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 22, 00, 0),
                    child: Text(
                      "7 day forcaste of ${tourDetail.title} ",
                      style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: result.length,
                        itemBuilder: (context, _index) {
                          return EachDayCard(
                              index: _index,
                              clouds: result[_index].clouds,
                              dayTemp: snapshot.data?.daily?[_index].temp?.day,
                              nightTemp: result[_index].temp?.night,
                              pop: result[_index].pop,
                              rain: result[_index].humidity,
                              uvi: result[_index].uvi);
                        }),
                  )
                ],
              );
            }
          }),
    );
  }
}
