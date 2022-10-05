import 'package:amazon_clone/view/menu/order_detail_page.dart';
import 'package:amazon_clone/view/search/search_widget.dart';
import 'package:flutter/material.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
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
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(25),
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: 200,
                          width: 50,
                          child: Image.network(
                              "https://images-eu.ssl-images-amazon.com/images/I/31bxdeBx3-L._SY90_.jpg"),
                        ),
                        title: const Text(
                          "Plum E-Luminence Simply Supple Cleansing Balm | Gentle Makeup Remover | Enriched with Vitamin E | For Normal, Dry, Combination Skin | 100% Vegan, Cruelty Free",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text("Delivered 22-Aug-2022"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(25),
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: 200,
                          width: 50,
                          child: Image.network(
                              "https://images-eu.ssl-images-amazon.com/images/I/31Jxaw%2BnQiL._SY90_.jpg"),
                        ),
                        title: const Text(
                          "Maybelline New York Volume Express Colossal Masacara, Waterproof, Black, 10ml",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text("Delivered 15-Aug-2022"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(25),
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: 200,
                          width: 50,
                          child: Image.network(
                              "https://images-eu.ssl-images-amazon.com/images/I/31ZFGCHWQbL._SY90_.jpg"),
                        ),
                        title: const Text(
                          "SUGAR Cosmetics - Contour De Force - Mini Blush - 02 Pink Pinnacle (Deep Rose Blush) - Long Lasting, Lightweight Makeup Blusher for Face",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text("Delivered 18-Aug-2022"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(25),
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: 200,
                          width: 50,
                          child: Image.network(
                              "https://images-eu.ssl-images-amazon.com/images/I/31tBagFTm1L._SY90_.jpg"),
                        ),
                        title: const Text(
                          "[USB-IF Certified] Techati 40Gbps USB4 Thunderbolt 4 USB C cable - 2 meter / 6.6 feet braided rugged cable with 100W charging and 8K video for laptop, mobile, MacBook, iPad, tab with Type-C ports",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text("Delivered 04-Sep-2022"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderDetailPage(),
                            ));
                      },
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(25),
                          tileColor: Colors.white,
                          leading: SizedBox(
                            height: 200,
                            width: 50,
                            child: Image.network(
                                "https://m.media-amazon.com/images/I/81afQk-7AjL._SL1500_.jpg"),
                          ),
                          title: const Text(
                            "Samsung Galaxy Note 20 Ultra",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text("Delivered 27-Jan-2022"),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderDetailPage(),
                            ));
                      },
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(25),
                          tileColor: Colors.white,
                          leading: SizedBox(
                            height: 200,
                            width: 50,
                            child: Image.network(
                                "https://images-eu.ssl-images-amazon.com/images/I/61MHrSG5XIL._SY90_.jpg"),
                          ),
                          title: const Text(
                            "VRT Battery Terminals, Diesel Car Battery Cable Terminal Clamps Connectors,Negative and Positive,Copper,Plastice Cover,Good Contact,Corrosion Resistan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text("Delivered 02-Jan-2022"),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderDetailPage(),
                            ));
                      },
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(25),
                          tileColor: Colors.white,
                          leading: SizedBox(
                            height: 200,
                            width: 50,
                            child: Image.network(
                                "https://images-eu.ssl-images-amazon.com/images/I/31qtcXAGD1L._SY90_.jpg"),
                          ),
                          title: const Text(
                            "Chemist at Play UnderArm Roll On with 4% Lactic Acid & 1% Mandelic Acid, Removes odour, Brightens Dark Underarms, Kills Bacteria, Exfoliates Underarm,",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text("Delivered 12-Dec-2021"),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}



/**
 * 
 * 
 * 
 * ClipPath(
          clipper: MycustomClipper(),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            width: 500,
            height: 500,
            child: Text('data'),
          ),
        ),
 */