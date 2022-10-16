import 'package:flutter/material.dart';
import 'package:house_estate/widget/category_widget.dart';

class Detail extends StatelessWidget {
  const Detail({
    Key? key,
    required this.gambar,
    required this.text,
  }) : super(key: key);

  final String gambar;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.16,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Book Now",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                gambar,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text(
                      text,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      ", Indonesia",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 4, bottom: 4),
                        child: Row(
                          children: [
                            Icon(DetailCities().iconDetail[index]),
                            const SizedBox(width: 5),
                            const Text(
                              "3 Beds",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemCount: DetailCities().iconDetail.length,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                child: const Text(
                  "Detail",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
                child: const Text(
                  "A new nuance for your life that offers natural beauty combined with exclusive, artistic, and elegant architectural residential designs. Strategic location, free of traffic jams, near toll gate access, 5 minutes to the city of Bogor, 20 minutes to Jakarta. The contours of the land are hilly, free from flooding, the air is clean, cool, and fresh. Close to places of worship, banks, apartments, hotels, tourist attractions, public transportation routes, and sports arenas.",
                  textAlign: TextAlign.justify,
                  // overflow: TextOverflow.ellipsis,
                  // maxLines: 12,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
