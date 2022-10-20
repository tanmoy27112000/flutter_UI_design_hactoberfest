import 'package:apis/modules/search/controller/search_screen_controller.dart';
import 'package:apis/data/tour.dart';
import 'package:apis/modules/current%20weather/view/current_weather_screen.dart';
import 'package:apis/modules/search/view/widgets/all_tour_result.dart';

import 'package:apis/modules/search/view/widgets/noresultfound.dart';
import 'package:apis/modules/search/view/widgets/search_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchTextController = TextEditingController();
  // final SearchScreenController _screenController =
  //     Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GetBuilder<SearchScreenController>(
          init: SearchScreenController(),
          builder: (_controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.11,
                ),
                SearchFeild(
                    screenController: _controller,
                    textController: _searchTextController),
                _searchTextController.text.isNotEmpty &&
                        _controller.listOfTours.isEmpty
                    ? const NoResultFound()
                    : AllTourResults(
                        listOfTour: _controller.listOfTours,
                      )
              ],
            );
          }),
    );
  }
}
