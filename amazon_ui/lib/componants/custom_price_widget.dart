import 'package:flutter/material.dart';
class CustomPriceWidget extends StatelessWidget {
  const CustomPriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          '$price',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          '99',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
