import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/login%20screen/login_screen.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAccountText extends StatelessWidget {
  const LoginAccountText({Key? key, this.primaryColor, this.secondryColor})
      : super(key: key);
  final primaryColor;
  final secondryColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          child: Wrap(children: [
            Text(
              "Sie haben bereits einen Account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.5,
                  color: secondryColor ?? mainThemeSecondryColor),
            ),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.offAll(() => const LoginScreen(),
                    transition: Transition.downToUp);
              },
              child: Text(
                "Anmelden",
                style: TextStyle(
                    color: primaryColor ?? mainThemeSecondryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyDatePickerFeild extends StatefulWidget {
  const MyDatePickerFeild(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);
  final hintText;
  final TextEditingController controller;

  @override
  State<MyDatePickerFeild> createState() => _MyDatePickerFeildState();
}

class _MyDatePickerFeildState extends State<MyDatePickerFeild> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Customfeild(
          textController: widget.controller,
          hintText: widget.hintText,
          inputType: TextInputType.datetime,
          isreadonly: true,
          width: MediaQuery.of(context).size.width * 0.78,
        ),
        GestureDetector(
          onTap: () {
            showDatePicker(
                context: context,
                initialDate: DateTime(2000, 1, 1),
                firstDate: DateTime(1920, 1, 1),
                lastDate: DateTime.now(),
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                builder: (context, picker) {
                  return Theme(
                    data: ThemeData.dark().copyWith(
                        colorScheme: ColorScheme.light(
                          primary: mainThemeColor,
                          onPrimary: Colors.white,
                          onSurface: inputTextColor,
                        ),
                        dialogBackgroundColor: Colors.white),
                    child: picker!,
                  );
                }).then((From_selectedDate) {
              if (From_selectedDate != null) {
                setState(() {
                  widget.controller.text = From_selectedDate.toString()
                      .replaceAll(' 00:00:00.000', '');
                });
              } else if (From_selectedDate == null) {
                setState(() {
                  widget.controller.text = "";
                });
              }
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.021),
            child: Icon(
              Icons.date_range_rounded,
              size: MediaQuery.of(context).size.height * 0.046,
              color: mainThemeColor,
            ),
          ),
        )
      ],
    );
  }
}
