import 'package:drsimple/services/post_service.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/signup%20screen/phone_verification.dart';
import 'package:drsimple/widgets/globalwidgets/global_text.dart';
import 'package:drsimple/widgets/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../variables/text_constants.dart';

class BackGroundGrediant extends StatelessWidget {
  const BackGroundGrediant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 135, 253, 253),
          Colors.transparent,
        ],
      )),
    );
  }
}

class RegisterText extends StatelessWidget {
  const RegisterText({Key? key, this.primaryColor, this.secondryColor})
      : super(key: key);
  final primaryColor;
  final secondryColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          child: Wrap(children: [
            Text(
              "Sie haben noch keinen Account?",
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
            Text(
              "Jetzt ",
              style: TextStyle(
                  color: secondryColor ?? mainThemeSecondryColor, fontSize: 18),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const PhoneVerificationStep1(),
                    transition: Transition.downToUp);
              },
              child: Text(
                "Registrieren",
                style: TextStyle(
                    color: primaryColor ?? mainThemeSecondryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.28,
        top: MediaQuery.of(context).size.height * 0.25,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/icons/logo.png',
            //  fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.09,
            // width: MediaQuery.of(context).size.width * 0.18,
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.020,
            ),
            child: Center(
              child: Text("Dr.Simple",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.034,
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      this.text,
      this.fontSize = 0.017,
      this.padding,
      this.alignment,
      this.textAlign,
      this.textColor,
      this.fontWeigth})
      : super(key: key);
  final text;
  final fontSize;
  final padding;
  final textAlign;
  final alignment;
  final textColor;
  final fontWeigth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.00),
      child: Align(
        alignment: alignment ?? Alignment.topLeft,
        child: Wrap(
          children: [
            Text(text,
                textAlign: textAlign ?? TextAlign.start,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontWeight: fontWeigth ?? FontWeight.w400,
                  color: textColor ?? secondryTextColor,
                  fontSize: MediaQuery.of(context).size.height * fontSize,
                ))),
          ],
        ),
      ),
    );
  }
}

class PrimaryHeading extends StatelessWidget {
  const PrimaryHeading(
      {Key? key, required this.text, this.alignment, this.padding})
      : super(key: key);
  final text;
  final alignment;
  final padding;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.topLeft,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: Text("$text",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: myTextColor,
              fontSize: MediaQuery.of(context).size.height * 0.036,
            ))),
      ),
    );
  }
}

class CustomAppButton extends StatelessWidget {
  const CustomAppButton(
      {Key? key,
      required this.Onclick,
      required this.text,
      this.width,
      this.heigth,
      this.color,
      this.textColor,
      this.padding,
      this.titleSize,
      this.elevation})
      : super(key: key);
  final Onclick;
  final text;
  final titleSize;
  final width;
  final heigth;
  final color;
  final textColor;
  final padding;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: SizedBox(
          width: width ?? MediaQuery.of(context).size.width * 1,
          height: heigth ?? MediaQuery.of(context).size.height * 0.07,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color ?? mainThemeSecondryColor,
                elevation: elevation ?? 0),
            onPressed: Onclick,
            child: Text("$text",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: textColor ?? myTextColor,
                  fontSize:
                      titleSize ?? MediaQuery.of(context).size.height * 0.020,
                ))),
          )),
    );
  }
}

AppBar myAppbar() {
  return AppBar(
    leading: Visibility(
      visible: true,
      child: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            MyFlutterApp.back,
            color: Colors.black,
          )),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
  );
}

class Customfeild extends StatelessWidget {
  const Customfeild(
      {Key? key,
      required this.textController,
      this.hintText,
      this.isreadonly,
      this.padding,
      this.inputType,
      this.width})
      : super(key: key);
  final TextEditingController textController;
  final padding;
  final isreadonly;
  final inputType;
  final hintText;
  final width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.05,
          ),
      width: width ?? MediaQuery.of(context).size.width * 1,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),

      // MCnumber Textfeild
      child: TextFormField(
          readOnly: isreadonly ?? false,
          controller: textController,
          ///////Validator
          validator: (value) {
            if (value!.isEmpty) {
              return ("Das Textfeld darf nicht leer sein");
            }

            return null;
          },
          onSaved: (value) {
            textController.text = value!;
          },

          //////////////////
          keyboardType: inputType ?? TextInputType.text,
          style: TextStyle(color: inputTextColor, height: 1),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 12.0)),
            hintText: hintText ?? '',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

class VisibleNumberFeild extends StatelessWidget {
  const VisibleNumberFeild(
      {Key? key,
      this.hintText,
      this.isreadonly,
      this.padding,
      this.inputType,
      this.width})
      : super(key: key);

  final padding;
  final isreadonly;
  final inputType;
  final hintText;
  final width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.05,
          ),
      width: width ?? MediaQuery.of(context).size.width * 1,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),

      // MCnumber Textfeild
      child: TextFormField(
          readOnly: isreadonly ?? false,

          //////////////////
          keyboardType: inputType ?? TextInputType.text,
          style: TextStyle(color: inputTextColor, height: 1),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 12.0)),
            hintText: hintText ?? '',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

class GlobalTile extends StatefulWidget {
  const GlobalTile({Key? key}) : super(key: key);

  @override
  State<GlobalTile> createState() => _GlobalTileState();
}

class _GlobalTileState extends State<GlobalTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainThemeColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 40,
            backgroundColor: Color(avatarColor),
            child: const Image(image: AssetImage('assets/images/doc.png')),
          ),
          title: textWidget(
            textValue: 'Das Rezept ist fertig ',
            colorValue: myTextColor,
            familyValue: 'Intel',
          ),
          subtitle: textWidget(
              textValue: tileSubtitle,
              colorValue: Color(
                contentGrey,
              ),
              familyValue: 'Intel'),
          trailing: Wrap(
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('assets/images/arrowDown.png')),
                  const SizedBox(height: 10),
                  textWidget(
                      textValue: demoTime,
                      colorValue: Color(
                        contentGrey,
                      ),
                      familyValue: 'Intel')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) {
  return DropdownMenuItem(
    value: item,
    child: Text(item,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: myTextColor, fontSize: 12))),
  );
}

Widget loading(context) {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      child: const CircularProgressIndicator(
        color: mainThemeColor,
        strokeWidth: 2,
      ),
    ),
  );
}

Widget nodata(context) {
  return Center(
    child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
        child: const Text("No Data")),
  );
}

class ReceiptReferralTile extends StatefulWidget {
  final title;
  final mg;
  final leadingimage;
  final id;

  const ReceiptReferralTile({
    Key? key,
    this.id,
    this.leadingimage,
    required this.title,
    required this.mg,
  }) : super(key: key);

  @override
  State<ReceiptReferralTile> createState() => _ReceiptReferralTileState();
}

class _ReceiptReferralTileState extends State<ReceiptReferralTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.009),
          child: Image(
            image: widget.leadingimage,
            height: MediaQuery.of(context).size.height * 0.08,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text("${widget.title}  ${widget.mg}",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: myTextColor,
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ))),
        ),
        trailing: GestureDetector(
          onTap: () {
            Get.find<PostApiService>()
                .orderRecipe(id: widget.id, dose: widget.mg);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: mainThemeColor.withOpacity(0.2),
            ),
            child: Center(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text("bestellen",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: mainThemeColor,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ))),
                ),
              ),
            ),
          ),
        ));
  }
}

class RefralHistroyTile extends StatelessWidget {
  const RefralHistroyTile({Key? key, this.leadingimage, this.title, this.id})
      : super(key: key);
  final leadingimage;
  final title;
  final id;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01),
          child: Image(image: leadingimage),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: myTextColor,
                fontSize: MediaQuery.of(context).size.height * 0.0195,
              ))),
        ),
        trailing: GestureDetector(
          onTap: () {
            Get.find<PostApiService>().bookedRefral(id: id);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: mainThemeColor.withOpacity(0.2),
            ),
            child: Center(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text("bestellen",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: mainThemeColor,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ))),
                ),
              ),
            ),
          ),
        ));
  }
}

class CustomAppTextFeild extends StatefulWidget {
  const CustomAppTextFeild(
      {Key? key, required this.controller, this.width, this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final width;
  final hintText;
  @override
  State<CustomAppTextFeild> createState() => _CustomAppTextFeildState();
}

class _CustomAppTextFeildState extends State<CustomAppTextFeild> {
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
            decoration: InputDecoration(
              counterText: '',
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
              contentPadding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03,
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w300),
            )),
      ),
    );
  }
}
