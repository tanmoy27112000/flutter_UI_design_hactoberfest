import 'package:flutter/material.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const SimpleButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CustomColors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: CustomColors.purple)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(child: Text(text,style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}

class HollowButton extends StatelessWidget {
  final String title ;
  final Function onPress ;
  const HollowButton({Key? key, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Container(

          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: CustomColors.purple,width: 1.5),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Text(title,style: const TextStyle(color: CustomColors.purple,fontSize: 18),)),
        ),
      ),
    );
  }
}

class SolidButton extends StatelessWidget {
  final String title ;
  final Function onPress ;
  const SolidButton({Key? key, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: CustomColors.purple,
              border: Border.all(color: CustomColors.purple,width: 1.5),
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 18),)),
        ),
      ),
    );
  }
}

