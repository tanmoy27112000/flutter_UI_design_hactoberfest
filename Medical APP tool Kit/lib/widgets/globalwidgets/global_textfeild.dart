import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';

class WhiteTextFeild extends StatefulWidget {
  const WhiteTextFeild({Key? key, required this.controller, this.width,this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final width;
  final hintText;
  @override
  State<WhiteTextFeild> createState() => _WhiteTextFeildState();
}

class _WhiteTextFeildState extends State<WhiteTextFeild> {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainThemeSecondryColor,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 208, 208, 208).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextFormField(
            controller: widget.controller,
            onChanged: (value) {},
            validator: (value) {
              if (value!.isEmpty) {
                return ("darf nicht leer sein");
              }
              return null;
            },
            onSaved: (value) {
              widget.controller.text = value!;
            },

            //////////////////

            style: TextStyle(color: inputTextColor),
            maxLines: 1,
            decoration:  InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )),
              fillColor: mainThemeSecondryColor,
              filled: true,
              hintText: widget.hintText,
              hintStyle:
                  const TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            )),
      ),
    );
  }
}
