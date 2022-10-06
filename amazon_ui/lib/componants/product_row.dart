import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'custom_price_widget.dart';

// ignore: must_be_immutable
class ProductRow extends StatelessWidget {
  ProductRow({
    Key? key,
    this.imageUrl,
    this.title,
    this.productCount,
    this.price,
  }) : super(key: key);
  String? imageUrl;
  String? title;
  String? productCount;
  String? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 42.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl!,
            // height: 25,
            width: MySizeConfig.screenWidth! * 0.25,

            //assets/images/internationalTopSellers/G-Raid.JPG
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MySizeConfig.screenWidth! * 0.67,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  '$productCount',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                // @@@@@@@ price @@@@@@@@@@@
                CustomPriceWidget(price: price),
              ],
            ),
          )
        ],
      ),
    );
  }
}
