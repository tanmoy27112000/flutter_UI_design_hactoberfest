import 'package:flutter/cupertino.dart';
import 'package:login_signup_page/pallette.dart';
import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, required this.buttonName,
  }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.08,
      width: size.width*0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
          color: KBlue),
      child: TextButton(
          onPressed: (){},
          child: Text(buttonName,
              style:kBodyText.copyWith(fontWeight: FontWeight.bold))),


    );
  }
}
