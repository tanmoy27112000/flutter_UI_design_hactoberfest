import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/MODELS/activity_model.dart';

import '../Widgets/cutomheader.dart';
import 'activity_details.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);
  static const routeName = "/activities";

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = Activity.activities;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomHeader(
              title: 'Activities',
            ),
            ActivityMasonryGrid(width: width, activities: activities)
          ],
        ),
      ),
    );
  }
}

class ActivityMasonryGrid extends StatelessWidget {
  const ActivityMasonryGrid({
    Key? key,
    required this.width,
    this.masonryCardHeight = const [200, 250, 300],
    required this.activities,
  }) : super(key: key);

  final List<Activity> activities;
  final List<double> masonryCardHeight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemCount: 7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        itemBuilder: (context, index) {
          Activity activity = activities[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ActivityDetailScreen(activity: activity)));
            },
            child: Column(
              children: [
                Hero(
                  tag: '${activity.id}_${activity.title}',
                  child: Container(
                    height: masonryCardHeight[index % 3],
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(activity.imgUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  activity.title,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        });
  }
}
