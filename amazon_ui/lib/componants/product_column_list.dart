import 'package:amazon_clone/componants/product_row.dart';
import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProductColumnWidget extends StatelessWidget {
  ProductColumnWidget({
    Key? key,
    this.pListTitle,
    this.pImageUrl1,
    this.pTitle1,
    this.pProductCount1,
    this.pPrice1,
    this.pImageUrl2,
    this.pTitle2,
    this.pProductCount2,
    this.pPrice2,
    this.pImageUrl3,
    this.pTitle3,
    this.pProductCount3,
    this.pPrice3,
  }) : super(key: key);
  // @@@@1
  String? pListTitle;
  String? pImageUrl1;
  String? pTitle1;
  String? pProductCount1;
  String? pPrice1;
  //@@@@@@2
  String? pImageUrl2;
  String? pTitle2;
  String? pProductCount2;
  String? pPrice2;
  //@@@@@@@3
  String? pImageUrl3;
  String? pTitle3;
  String? pProductCount3;
  String? pPrice3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MySizeConfig.screenWidth,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 49,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$pListTitle',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    ProductRow(
                        imageUrl: pImageUrl1,
                        title: pTitle1,
                        productCount: pProductCount1,
                        price: pPrice1),
                    ProductRow(
                        imageUrl: pImageUrl2,
                        title: pTitle2,
                        productCount: pProductCount2,
                        price: pPrice2),
                    ProductRow(
                        imageUrl: pImageUrl3,
                        title: pTitle3,
                        productCount: pProductCount3,
                        price: pPrice3),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
