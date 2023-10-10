import 'package:flutter/material.dart';

// The section that contains the ratings,price and location on the details page
class Price_row extends StatelessWidget {
  const Price_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.purple,
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: Colors.grey,
                  ),
                  Text(
                    "8km to centrum",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "\$200",
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
              Text(
                "/per night",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
