import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Favorite",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/pic_favorite.png",
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 300,
            child: Text(
              "Looks like you don't have any favorite yet!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 250,
            child: Text(
              "Browser our discover to find your favorite ones",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Material(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                child: const Center(
                  child: Text(
                    "Browser Discover",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
