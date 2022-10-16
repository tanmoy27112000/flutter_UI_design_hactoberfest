import 'package:flutter/material.dart';
import 'package:login_register/utils/colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
          color: MyColors.basicBlack, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: MyColors.basicBlack, fontWeight: FontWeight.normal),
        fillColor: MyColors.basicWhite,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      cursorColor: Colors.white,
    );
  }
}
