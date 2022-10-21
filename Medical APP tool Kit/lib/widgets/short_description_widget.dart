import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';

import '../variables/ui_variables.dart';

class ShortDescriptionFeild extends StatefulWidget {
  const ShortDescriptionFeild({Key? key, required this.controller, this.width})
      : super(key: key);
  final TextEditingController controller;
  final width;

  @override
  State<ShortDescriptionFeild> createState() => _ShortDescriptionFeildState();
}

class _ShortDescriptionFeildState extends State<ShortDescriptionFeild> {
  var inputnumber = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            width: widget.width ?? MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: mainThemeSecondryColor,
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 208, 208, 208).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
                controller: widget.controller,
                onChanged: (value) {
                  setState(() {
                    inputnumber = value.length;
                  });
                },
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

                style: TextStyle(color: inputTextColor, fontSize: 20),
                maxLines: 9,
                maxLength: 150,
                decoration: const InputDecoration(
                  counterText: '',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )),
                  fillColor: mainThemeSecondryColor,
                  labelStyle: TextStyle(fontSize: 34),
                  filled: true,
                  hintText: 'Geben Sie den Grund Ihres Besuches an',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w300),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: "$inputnumber/150"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////
