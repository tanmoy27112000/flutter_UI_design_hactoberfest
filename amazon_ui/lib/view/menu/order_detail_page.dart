import 'package:amazon_clone/view/menu/order_image_page.dart';
import 'package:amazon_clone/view/search/search_widget.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
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
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Center(
                                  child: Image.network(
                                      "https://m.media-amazon.com/images/I/81afQk-7AjL._SL1500_.jpg"),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Samsung Galaxy Note 20 Ultra",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.ios_share_rounded),
                                    Text("Share this item"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text("Buy it again"),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        const Divider(),
                        Container(
                          height: 8,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "How's your Item?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text("Write a product review"),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text("Create a video review"),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        const Divider(),
                        Container(
                          height: 8,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Order info",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderImagePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text("View order details"),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => SizedBox(
                                height: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.all(16),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(8),
                                                ),
                                              ),
                                              child: ValueListenableBuilder(
                                                valueListenable: selectedIndex,
                                                builder: (BuildContext context,
                                                    dynamic value,
                                                    Widget? child) {
                                                  return Column(
                                                    children: <Widget>[
                                                      RadioListTile(
                                                        contentPadding:
                                                            EdgeInsets.zero,
                                                        value: 0,
                                                        groupValue: value,
                                                        onChanged: (value) {
                                                          selectedIndex.value =
                                                              value as int;
                                                        },
                                                        title: const Text(
                                                            "Invoice"),
                                                      ),
                                                      const Divider(height: 1),
                                                      RadioListTile(
                                                        value: 1,
                                                        contentPadding:
                                                            EdgeInsets.zero,
                                                        groupValue: value,
                                                        onChanged: (value) {
                                                          selectedIndex.value =
                                                              value as int;
                                                        },
                                                        title: const Text(
                                                            "Warranty / Pslip"),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Text(
                                                  "The warrenty document contains IMEI number for wireless products."),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      "${selectedIndex.value == 0 ? "Invoice" : "Pslip"} downloaded successfully",
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                  margin:
                                                      const EdgeInsets.all(16),
                                                  decoration: BoxDecoration(
                                                      color: Colors.yellow,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: const Center(
                                                    child: Text(
                                                        "Download documents"),
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text("Download Invoice"),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                        const Divider(),
                      ],
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
