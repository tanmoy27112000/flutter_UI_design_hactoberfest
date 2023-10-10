import 'package:flutter/material.dart';
//The Book now button on the details screen
class BooknowBtn extends StatelessWidget {
  const BooknowBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: const StadiumBorder(),
          backgroundColor: Colors.purple,
        ),
        onPressed: () {},
        child: const Text(
          "Book Now",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
