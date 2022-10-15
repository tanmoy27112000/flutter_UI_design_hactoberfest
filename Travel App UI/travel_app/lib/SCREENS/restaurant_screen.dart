import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/MODELS/restaurant_model.dart';

import '../Widgets/cutomheader.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);
  static const routeName = "/restaurants";

  @override
  Widget build(BuildContext context) {
    List<RestaurantModel> restaurants = RestaurantModel.resModel;
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
              title: 'Restaurants',
            ),
            RestaurantMasonryGrid(
              width: width,
              res: restaurants,
            )
          ],
        ),
      ),
    );
  }
}

class RestaurantMasonryGrid extends StatelessWidget {
  const RestaurantMasonryGrid({
    Key? key,
    required this.width,
    this.masonryCardHeight = const [200, 250, 300],
    required this.res,
  }) : super(key: key);

  final List<RestaurantModel> res;
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
          RestaurantModel restaurant = res[index];
          return InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             ActivityDetailScreen(activity: flights)));
            },
            child: Column(
              children: [
                Hero(
                  tag: '${restaurant.id}_${restaurant.title}',
                  child: Container(
                    height: masonryCardHeight[index % 3],
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(restaurant.imgUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  restaurant.title,
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
