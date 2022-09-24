import 'package:amazon_clone/view/search/search_widget.dart';
import 'package:flutter/material.dart';

class OrderImagePage extends StatefulWidget {
  const OrderImagePage({Key? key}) : super(key: key);

  @override
  _OrderImagePageState createState() => _OrderImagePageState();
}

class _OrderImagePageState extends State<OrderImagePage> {
  ValueNotifier<int> selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 131, 217, 226),
                  Color.fromARGB(150, 164, 229, 207),
                  Color.fromARGB(100, 233, 248, 243),
                  // Color(0x0086d9e0),
                  // Color(0x00a3e6cf),
                ],
              ),
            ),
          ),
          //widgets @@@@@@@@@
          Column(
            children: [
              const SearchWidget(),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/detail_page.jpeg"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
