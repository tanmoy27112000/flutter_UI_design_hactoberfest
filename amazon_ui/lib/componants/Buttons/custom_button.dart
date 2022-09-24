import 'package:amazon_clone/view/menu/order_list_page.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton({
    Key? key,
    this.width,
    this.height,
    this.text,
    this.buttonColor,
    this.fontWeight,
    this.fontSize,
    this.fontColor,
    this.radiusCount,
  }) : super(key: key);
  double? width;
  double? height;
  String? text;
  Color? buttonColor;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  double? radiusCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OrderListPage(),
          ),
        );
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(radiusCount!)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
