import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';

import 'package:flutter/material.dart';

class InProgressContainer extends StatelessWidget {
  const InProgressContainer(
      {Key? key, required this.title, required this.icon, required this.status})
      : super(key: key);
  final title;
  final icon;
  final status;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.04,
          left: MediaQuery.of(context).size.width * 0.052,
          right: MediaQuery.of(context).size.width * 0.052),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.034),
      height: MediaQuery.of(context).size.width * 0.17,
      width: MediaQuery.of(context).size.width * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03),
            child: Icon(
              icon,
              color: mainThemeColor,
              size: MediaQuery.of(context).size.height * 0.041,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.47,
            child: CustomText(
              alignment: Alignment.centerLeft,
              text: title.length > 17 ? title.substring(0, 17) + '...' : title,
              textColor: myTextColor,
              fontSize: 0.02,
            ),
          ),
          const StatusTags(
            text: "in bearbeitung",
          )
        ],
      ),
    );
  }
}

class StatusTags extends StatelessWidget {
  const StatusTags({Key? key, this.color, this.text, this.textColor})
      : super(key: key);
  final color;
  final text;
  final textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.24,
      height: MediaQuery.of(context).size.height * 0.045,
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFFEF0D6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CustomText(
        alignment: Alignment.center,
        text: text ?? '',
        textColor: textColor ?? const Color(0xFFDC9F31),
        fontSize: 0.0143,
        fontWeigth: FontWeight.w500,
      ),
    );
  }
}

class TreatmentCompletedContainer extends StatelessWidget {
  const TreatmentCompletedContainer(
      {Key? key,
      required this.title,
      required this.icon,
      required this.status,
      required this.date})
      : super(key: key);
  final title;
  final icon;
  final status;
  final date;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.04,
          left: MediaQuery.of(context).size.width * 0.052,
          right: MediaQuery.of(context).size.width * 0.052),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.034),
      height: MediaQuery.of(context).size.width * 0.17,
      width: MediaQuery.of(context).size.width * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03),
            child: Icon(
              icon,
              color: mainThemeColor,
              size: MediaQuery.of(context).size.height * 0.042,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.48,
            child: CustomText(
              alignment: Alignment.centerLeft,
              text: title.length > 17 ? title.substring(0, 17) + '...' : title,
              textColor: myTextColor,
              fontSize: 0.02,
            ),
          ),
          DateOfComplition(
            date: "$date",
            time: "",
          )
        ],
      ),
    );
  }
}

class DateOfComplition extends StatelessWidget {
  const DateOfComplition({Key? key, required this.date, required this.time})
      : super(key: key);
  final date;
  final time;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            alignment: Alignment.center,
            text: '$date',
            textColor: mainThemeColor,
            fontSize: 0.016,
            fontWeigth: FontWeight.w500,
          ),
          CustomText(
            alignment: Alignment.center,
            text: '$time',
            fontWeigth: FontWeight.w500,
            textColor: mainThemeColor,
            fontSize: 0.016,
          ),
        ],
      ),
    );
  }
}

class CompletedContainer extends StatelessWidget {
  const CompletedContainer(
      {Key? key,
      required this.title,
      required this.icon,
      required this.status,
      required this.date})
      : super(key: key);
  final title;
  final icon;
  final status;
  final date;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.04,
          left: MediaQuery.of(context).size.width * 0.052,
          right: MediaQuery.of(context).size.width * 0.052),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.034),
      height: MediaQuery.of(context).size.width * 0.17,
      width: MediaQuery.of(context).size.width * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03),
            child: Icon(
              icon,
              color: mainThemeColor,
              size: MediaQuery.of(context).size.height * 0.042,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  alignment: Alignment.centerLeft,
                  text: "$date",
                  textColor: myTextColor.withOpacity(0.5),
                  fontSize: 0.012,
                ),
                CustomText(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.008,
                      top: MediaQuery.of(context).size.height * 0.002),
                  alignment: Alignment.centerLeft,
                  text: title.length > 17
                      ? title.substring(0, 17) + '...'
                      : title,
                  textColor: myTextColor,
                  fontSize: 0.02,
                ),
              ],
            ),
          ),
          StatusTags(
            color: mainThemeColor.withOpacity(0.2),
            text: "fertig",
            textColor: mainThemeColor,
          )
        ],
      ),
    );
  }
}
