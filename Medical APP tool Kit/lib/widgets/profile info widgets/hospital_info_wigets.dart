import 'dart:developer';

import 'package:drsimple/variables/ui_variables.dart';

import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          CustomText(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            text: "Adresse",
            fontSize: 0.021,
            // textAlign: TextAlign.left,
            textColor: myTextColor,
            fontWeigth: FontWeight.w500,
          ),
          const Image(image: AssetImage("assets/images/map.png")),
          const AddressGoogleMapWidget()
        ],
      ),
    );
  }
}

class AddressGoogleMapWidget extends StatelessWidget {
  const AddressGoogleMapWidget({Key? key, this.lat, this.lng, this.place})
      : super(key: key);
  final lat;
  final lng;
  final place;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03),
            child: Icon(
              Icons.map,
              color: mainThemeColor,
              size: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.44,
            child: Column(
              children: const [
                CustomText(
                  alignment: Alignment.centerLeft,
                  text: "Google Maps",
                  textColor: myTextColor,
                  fontSize: 0.02,
                ),
                CustomText(
                  alignment: Alignment.centerLeft,
                  text: "Lützenkirchener Straße 393 5138, Leverkusen",
                  textColor: myTextColor,
                  fontSize: 0.014,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (() async {
              final availableMaps = await MapLauncher.installedMaps;
              inspect(
                  availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

              await availableMaps.first.showMarker(
                coords: Coords(51.06452253141741, 7.0521082932530375),
                title: "Ocean Beach",
              );
            }),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.048,
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CustomText(
                alignment: Alignment.center,
                text: 'Anfahrt',
                textColor: mainThemeSecondryColor,
                fontSize: 0.016,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimingContainer extends StatelessWidget {
  const TimingContainer({Key? key, this.timiglist}) : super(key: key);
  final timiglist;
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
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04),
              child: Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    color: mainThemeColor,
                    size: 38,
                  ),
                  CustomText(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.01,
                      vertical: MediaQuery.of(context).size.height * 0.022,
                    ),
                    text: "Öffnungszeiten",
                    fontSize: 0.021,
                    // textAlign: TextAlign.left,
                    textColor: myTextColor,
                    fontWeigth: FontWeight.w500,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: timiglist.length,
                          itemBuilder: (context, index) {
                            return CustomText(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.12,
                                  bottom: MediaQuery.of(context).size.height *
                                      0.01),
                              text: timiglist[index],
                              textColor: myTextColor,
                              fontSize: 0.017,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
