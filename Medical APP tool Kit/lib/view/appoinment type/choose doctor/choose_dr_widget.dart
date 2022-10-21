import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/appoinment%20type/short%20description/short_description.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//////////////////////////////////////////////tile widget//////////////////////////////////////////////////////
class ChooseDoctorTile extends StatefulWidget {
  final nameText;
  final titleText;
  final subtitleText1;
  final subtitleText2;
  final id;
  final imageURL;
  const ChooseDoctorTile({
    this.nameText,
    this.titleText,
    this.subtitleText1,
    this.subtitleText2,
    this.imageURL,
    this.id,
  });

  @override
  State<ChooseDoctorTile> createState() => _ChooseDoctorTileState();
}

class _ChooseDoctorTileState extends State<ChooseDoctorTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ShortDesctiptionAppoinment(),
            arguments: [widget.id]);
      },
      child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: mainThemeSecondryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.imageURL),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nameText,
                        style: TextStyle(
                            color: myTextColor,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        widget.titleText,
                        style: TextStyle(
                            color: mainThemeColor,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.006,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.subtitleText1,
                            style: TextStyle(
                              color: myTextColor,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                            ),
                          ),
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            widget.subtitleText2,
                            style: TextStyle(
                              color: myTextColor,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                            ),
                          ),
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
