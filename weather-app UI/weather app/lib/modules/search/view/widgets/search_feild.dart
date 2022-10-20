import 'package:apis/modules/search/controller/search_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFeild extends StatelessWidget {
  final TextEditingController textController;
  final SearchScreenController screenController;
  const SearchFeild(
      {Key? key, required this.textController, required this.screenController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(
          screenWidth * 0.02, screenHeigth * 0.03, screenWidth * 0.02, 0),
      height: MediaQuery.of(context).size.height * 0.055,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40.0)),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white.withOpacity(0.7)),
        controller: textController,
        onChanged: (value) {
          screenController.searchTour(textController.text);
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            child: SizedBox(
              width: screenWidth * 0.1,
              height: screenHeigth * 0.1,
              child: IconButton(
                onPressed: () {
                  screenController.cancelSearch();
                },
                icon: Icon(
                  Icons.cancel_sharp,
                  color: Colors.grey.withOpacity(0.8),
                  size: 18,
                ),
              ),
            ),
          ),
          focusedBorder: InputBorder.none,
          hintText: 'Search City',
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
