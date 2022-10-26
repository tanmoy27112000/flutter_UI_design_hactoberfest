import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Size? fixedSize;
  final void Function()? onPressed;
  const CustomElevatedButton({super.key, required this.text, this.fixedSize, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        fixedSize: fixedSize ??
            Size(
              size.width * 0.3,
              size.height * 0.06,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.headline6!.fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
