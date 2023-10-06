import 'package:flutter/material.dart';

class PhotoName extends StatelessWidget {
  final bool showFollowerCount ;
  const PhotoName({Key? key, required this.showFollowerCount}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/4237evohdno3t2rsouqb5med7r.jpg' ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Kevin Hart',
              style: TextStyle(color: showFollowerCount ? Colors.white :Colors.black ,fontSize: 20,fontWeight: FontWeight.w500),
            ),
            showFollowerCount ?
            const Text(
              'IG : 14m Follower',
              style: TextStyle(color: Colors.white),
            ):Container()
          ],
        ),
      ],
    );
  }
}
