import 'package:flutter/material.dart';
import 'package:login_register/utils/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 222,
      decoration: BoxDecoration(
        color: MyColors.basicWhite,
        borderRadius: BorderRadius.circular(32),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: MyColors.basicWhite, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 22,
                color: MyColors.basicBlack,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
