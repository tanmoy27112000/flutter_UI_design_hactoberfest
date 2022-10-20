import 'package:apis/data/tour.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  List<Tour> listOfTours = allTours;

  cancelSearch() {
    Get.back();
  }

  void searchTour(String qurey) {
    // update new list by .where function
    final suggestions = allTours.where((tour) {
      final tourTitle = tour.title.toLowerCase();
      final input = qurey.toLowerCase();

      return tourTitle.contains(input);
    }).toList();

    listOfTours = suggestions;
// work as a set state to
    update();
  }
}
