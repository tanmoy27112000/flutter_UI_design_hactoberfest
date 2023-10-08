import 'package:crypto_app/view/home_view/select_coin_screen.dart';
import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  var item;
  Item2({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: size.height * 0.01,
      ),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectCoinScreen(selectItem: item,),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03,
            vertical: size.height * 0.01,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,
                child: Image.network(item.image),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                item.id,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
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
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    item.marketCapChangePercentage24H.toStringAsFixed(2) + "%",
                    style: TextStyle(
                      fontSize: 14,
                      color: item.marketCapChangePercentage24H >= 0
                          ? Colors.lightGreen
                          : Colors.red,
                      fontWeight: FontWeight.normal,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
