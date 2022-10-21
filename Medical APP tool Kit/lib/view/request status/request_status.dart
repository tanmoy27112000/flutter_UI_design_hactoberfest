import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/app%20essentionals/bottom_nav.dart';
import 'package:drsimple/view/request%20status/request_status_widgets.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';

import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestStatus extends StatefulWidget {
  const RequestStatus({Key? key}) : super(key: key);

  @override
  State<RequestStatus> createState() => _RequestStatusState();
}

class _RequestStatusState extends State<RequestStatus> {
  final TextEditingController _textcontroller = TextEditingController();

  final items = ['Rezepte', 'Überweisungen', 'Termine'];
  dynamic dropvalue = "Überweisungen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: GlobalConatainer1(
                      Onback: () {
                        Get.offAll(() => const MyNavigationBar());
                      },
                      containerheight: 0.19,
                      textSize: 20,
                      textFamily: 'Inter',
                      textColor: mainThemeSecondryColor,
                      textValue: "Ihre Anfragen")),
              ////////////////////////
              FutureBuilder(
                  future:
                      Get.find<GetAPIServices>().getRequest(type: dropvalue),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1),
                        child: loading(context),
                      );
                    } else if (snapshot.data == null) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.12),
                            child: Center(
                              child: Container(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: mainThemeSecondryColor,
                                  ),
                                  child: Theme(
                                    data: Theme.of(context).copyWith(
                                      canvasColor: mainThemeSecondryColor,
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isExpanded: true,
                                        value: dropvalue,
                                        hint: Text("Select One",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    color: myTextColor,
                                                    fontSize: 12))),
                                        items:
                                            items.map(buildMenuItem).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            dropvalue = value;
                                          });
                                        },
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1),
                        child: loading(context),
                      );
                    } else {
                      var inProgressList = [];
                      List completedLits = [];
                      for (var i in snapshot.data) {
                        if (i["is_completed"] == "1") {
                          completedLits.add(i);
                        } else if (i["is_confirm"] == "1") {
                          inProgressList.add(i);
                        }
                      }

                      return Positioned(
                          child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.12,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: mainThemeSecondryColor,
                                    ),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                        canvasColor: mainThemeSecondryColor,
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          value: dropvalue,
                                          hint: Text("Select One",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      color: myTextColor,
                                                      fontSize: 12))),
                                          items:
                                              items.map(buildMenuItem).toList(),
                                          onChanged: (value) {
                                            //Get.find<ReportScreenController>().dropValue = value.toString();
                                            setState(() {
                                              dropvalue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    )),
                              ),
////////////////////////////////////in Progress
                              CustomText(
                                text: 'In Bearbeitung',
                                fontSize: 0.024,
                                textColor: myTextColor,
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05,
                                    left: MediaQuery.of(context).size.width *
                                        0.07),
                              ),

                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: inProgressList.length,
                                  itemBuilder: (context, index) {
                                    return InProgressContainer(
                                      title: dropvalue == "Termine"
                                          ? "Termin ${inProgressList[index]["type"]}"
                                          : inProgressList[index]["name"],
                                      icon: dropvalue == "Termine"
                                          ? Icons.directions_walk_rounded
                                          : Icons.medical_services_outlined,
                                      status: "",
                                    );
                                  }),
                              ///////////////////////////////////// completed
                              CustomText(
                                text: 'Fertig',
                                fontSize: 0.024,
                                textColor: myTextColor,
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.06,
                                    left: MediaQuery.of(context).size.width *
                                        0.07),
                              ),

                              //////////////////////////////////
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: completedLits.length,
                                  itemBuilder: (context, index) {
                                    return dropvalue == "Termine"
                                        ? TreatmentCompletedContainer(
                                            title:
                                                "Termin ${completedLits[index]["type"]}",
                                            icon: Icons
                                                .check_circle_outline_rounded,
                                            status: "",
                                            date: completedLits[index]["date"],
                                          )
                                        : CompletedContainer(
                                            title: completedLits[index]["name"],
                                            icon: Icons
                                                .check_circle_outline_rounded,
                                            status: "",
                                            date: completedLits[index]["date"],
                                          );
                                  }),
                            ],
                          ),
                        ),
                      ));
                    }
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
