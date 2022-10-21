import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/appoinment%20type/choose%20doctor/choose_dr_widget.dart';
import 'package:drsimple/view/appoinment%20type/short%20description/short_description.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseDoctor extends StatefulWidget {
  const ChooseDoctor({Key? key}) : super(key: key);

  @override
  State<ChooseDoctor> createState() => _ChooseDoctorState();
}

class _ChooseDoctorState extends State<ChooseDoctor> {
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
                containerheight: 0.25,
                textValue: "Wählen Sie Ihren Arzt",
                textColor: mainThemeSecondryColor,
                textFamily: 'Inter',
                textSize: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.17),
              child: FutureBuilder(
                  future: Get.find<GetAPIServices>().geDoctors(),
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
                      return ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return ChooseDoctorTile(
                              imageURL: snapshot.data[index]["image"],
                              id: snapshot.data[index]["id"],
                              nameText: snapshot.data[index]["name"],
                              titleText: snapshot.data[index]["qualification"],
                              subtitleText1: snapshot.data[index]["spec1"],
                              subtitleText2: snapshot.data[index]["spec2"]);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 15,
                          );
                        },
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
