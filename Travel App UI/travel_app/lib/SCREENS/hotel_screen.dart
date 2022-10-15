import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/MODELS/hotel_model.dart';
import 'package:travel_app/Widgets/cutomheader.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);
  static const routeName = "/hotels";

  @override
  Widget build(BuildContext context) {
    List<HotelModel> hotels = HotelModel.hotelModel;
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
              title: 'Hotels',
            ),
            HotelMasonryGrid(
              width: width,
              hotelsModels: hotels,
            )
          ],
        ),
      ),
    );
  }
}

class HotelMasonryGrid extends StatelessWidget {
  const HotelMasonryGrid({
    Key? key,
    required this.width,
    this.masonryCardHeight = const [200, 250, 300],
    required this.hotelsModels,
  }) : super(key: key);

  final List<HotelModel> hotelsModels;
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
          HotelModel hotel = hotelsModels[index];
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
                  tag: '${hotel.id}_${hotel.title}',
                  child: Container(
                    height: masonryCardHeight[index % 3],
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(hotel.imgUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  hotel.title,
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
