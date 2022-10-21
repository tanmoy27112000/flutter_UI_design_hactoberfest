import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20number/password_for_number_change.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20password/otp_for_password_change.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileInfoCard extends StatelessWidget {
  const UserProfileInfoCard({Key? key, this.value, this.title})
      : super(key: key);
  final title;
  final value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * screenPaddingHorizontal,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: inputTextColor,
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                '$value',
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              //   Divider()
            ],
          ),
        ],
      ),
    );
  }
}

class JoinDate extends StatelessWidget {
  const JoinDate({Key? key, this.value}) : super(key: key);
  final value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * screenPaddingHorizontal,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Geburtstag",
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Lato',
                  color: inputTextColor,
                  fontSize: 13,
                ),
              ),
              Text(
                '$value',
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              //   Divider()
            ],
          ),
        ],
      ),
    );
  }
}

class UserPhoneNumber extends StatelessWidget {
  const UserPhoneNumber({Key? key, this.value}) : super(key: key);
  final value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * screenPaddingHorizontal,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Handynummer",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: inputTextColor,
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                '$value',
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const PasswordForNumberChange());
            },
            child: CustomText(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.028),
              text: "ändern",
              textColor: mainThemeColor,
              fontSize: 0.024,
            ),
          )
        ],
      ),
    );
  }
}

class PasswordInfo extends StatelessWidget {
  const PasswordInfo({Key? key, this.value, this.phoneNumber})
      : super(key: key);
  final value;
  final phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * screenPaddingHorizontal,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Passwort",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: inputTextColor,
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                '$value',
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const OTPforPasswordReset(),
                  transition: Transition.downToUp, arguments: [phoneNumber]);
            },
            child: CustomText(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              text: "ändern",
              textColor: mainThemeColor,
              fontSize: 0.024,
            ),
          )
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key, this.width, this.padding}) : super(key: key);
  final width;
  final padding;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: padding ??
            EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                bottom: MediaQuery.of(context).size.height * 0.035),
        color: Colors.grey.withOpacity(0.3),
        width: width ?? MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.001,
      ),
    );
  }
}

class ContactContainer extends StatelessWidget {
  const ContactContainer({Key? key, this.phone, this.email}) : super(key: key);
  final phone;
  final email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      child: Container(
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
              child: Text(
                'Kontakt',
                style: GoogleFonts.getFont(
                  'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            ContactTile(
                icon: Icons.phone_rounded,
                title: "Telefonnummer",
                value: "$phone"),
            CustomDivider(
                padding: EdgeInsets.only(),
                width: MediaQuery.of(context).size.width * 0.8),
            ContactTile(
                icon: Icons.mail_rounded,
                title: "Email Adresse",
                value: "$email"),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  const ContactTile({Key? key, this.title, this.value, this.icon})
      : super(key: key);
  final value;
  final title;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: mainThemeColor,
            size: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.004,
                        left: MediaQuery.of(context).size.width * 0.016),
                    child: Text(
                      '$value',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
