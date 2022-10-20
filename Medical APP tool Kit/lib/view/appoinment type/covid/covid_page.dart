import 'dart:developer';

import 'package:drsimple/services/appoinment_service.dart';
import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/services/post_service.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../variables/ui_variables.dart';

class CovidPage extends StatefulWidget {
  const CovidPage({Key? key}) : super(key: key);

  @override
  State<CovidPage> createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  var items = [""];
  var bookDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            const Positioned(
              child: GlobalConatainer1(
                containerheight: 0.21,
                textValue: "Bitte wählen sie einen \nfreien Termin",
                textColor: mainThemeSecondryColor,
                textFamily: 'Inter',
                textSize: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.14),
              child: FutureBuilder(
                  future: Get.find<GetAPIServices>().getCovidDate(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.21),
                        child: loading(context),
                      );
                    } else {
                      List<String> dates = [];
                      List time = [];
                      for (var i in snapshot.data) {
                        dates.add(i["date"]);
                      }
                      items = dates;
                      return Column(
                        children: [
                          Center(
                            child: Container(
                                margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: mainThemeSecondryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 222, 220, 220)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    canvasColor: mainThemeSecondryColor,
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      icon: const Icon(
                                        Icons.calendar_today_rounded,
                                        color: mainThemeColor,
                                      ),
                                      isExpanded: true,
                                      value: bookDate,
                                      hint: Text("Datum walhen",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: myTextColor,
                                                  fontSize: 12))),
                                      items: items.map(buildMenuItem).toList(),
                                      onChanged: (value) {
                                        //Get.find<ReportScreenController>().dropValue = value.toString();
                                        setState(() {
                                          bookDate = value;
                                        });
                                      },
                                    ),
                                  ),
                                )),
                          ),
///////////////////////////////////////////////////////////////////////////

                          CustomAppButton(
                            Onclick: () {
                              inspect(bookDate);
                              Get.find<AppoinmentService>().covidCreate(
                                book_date: bookDate,
                              );
                            },
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.6),
                            text: "Weiter",
                            width: MediaQuery.of(context).size.width * 0.8,
                            textColor: mainThemeSecondryColor,
                            color: mainThemeColor,
                            elevation: 2,
                          ),
                        ],
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
