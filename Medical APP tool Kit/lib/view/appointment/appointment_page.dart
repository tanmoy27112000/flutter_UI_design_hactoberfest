import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';

import '../../variables/text_constants.dart';
import '../../variables/ui_variables.dart';
import '../../widgets/globalwidgets/global_text.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: GlobalConatainer1(
                containerheight: 0.25,
                textValue: appointment1,
                textColor: mainThemeColor,
                textFamily: 'Inter',
                textSize: 25,
              ),
            ),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const AppointmentTile();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ),
            ))
          ],
        ),
      )),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
class AppointmentTile extends StatefulWidget {
  const AppointmentTile({Key? key}) : super(key: key);

  @override
  State<AppointmentTile> createState() => _AppointmentTileState();
}

class _AppointmentTileState extends State<AppointmentTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
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
                child:
                    const Image(image: AssetImage('assets/images/appoint.png')),
              ),
              title: textWidget(
                textValue: appointment2,
                colorValue: myTextColor,
                familyValue: 'Intel',
              ),
            ),
          ),
        ));
  }
}
