import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  var item;
  Item({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.015,
      ),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: size.height * 0.06,
                child: Image.network(item.image),
              ),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.id,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "0.4 " + item.symbol,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: size.height * 0.05,
                // width: size.width * 0.2,
                child: Sparkline(
                  data: item.sparklineIn7D.price,
                  lineWidth: 2.0,
                  lineColor: item.marketCapChangePercentage24H >= 0
                      ? Colors.green
                      : Colors.red,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.7],
                    colors: item.marketCapChangePercentage24H >= 0
                        ? [Colors.green, Colors.green.shade100]
                        : [Colors.red, Colors.red.shade100],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${item.currentPrice}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  // SizedBox(
                  //   height: size.height * 0.004,
                  // ),
                  Column(
                    children: [
                      Text(
                        item.priceChange24H.toString().contains('-')
                            ? "-\$${item.priceChange24H.toStringAsFixed(2).replaceAll('-', '')}"
                            : "\$" + item.priceChange24H.toStringAsFixed(2),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        item.marketCapChangePercentage24H.toStringAsFixed(2) +
                            "%",
                        style: TextStyle(
                          fontSize: 14,
                          color: item.marketCapChangePercentage24H >= 0
                              ? Colors.lightGreen
                              : Colors.red,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
