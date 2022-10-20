import 'package:drsimple/variables/ui_variables.dart';

import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';

import '../widgets/globalwidgets/global_textfeild.dart';

// class RequestPrescription extends StatelessWidget {
//   RequestPrescription({Key? key}) : super(key: key);
//   final TextEditingController _textcontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: [
//               const Positioned(
//                   top: 0,
//                   child: GlobalConatainer1(
//                       containerheight: 0.15,
//                       textSize: 20,
//                       textFamily: 'Inter',
//                       textColor: mainThemeSecondryColor,
//                       textValue: "'Haftungsausschluss")),
//               Positioned(
//                   child: Padding(
//                 padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.23,
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       WhiteTextFeild(
//                         width: MediaQuery.of(context).size.width * 0.9,
//                         controller: _textcontroller,
//                         hintText: "eg. zu 2mg ",
//                       )
//                     ],
//                   ),
//                 ),
//               )),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
