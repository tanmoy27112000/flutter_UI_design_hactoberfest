// import 'package:flutter/material.dart';

// class LandingButton extends StatelessWidget {
//   final String buttonText;
//   final Color buttonColor;
//   final Color borderColor;
//   final dynamic onPressed;
//   const LandingButton(
//       {@required this.buttonColor,
//       @required this.buttonText,
//       @required this.borderColor,
//       @required this.onPressed});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 350.0),
//         child: Container(
//           width: 200.0,
//           height: 40.0,
//           decoration: BoxDecoration(
//               border: Border.all(color: borderColor),
//               color: buttonColor,
//               borderRadius: BorderRadius.circular(25.0)),
//           child: Center(
//               child: Text(buttonText,
//                   style: Theme.of(context).textTheme.bodyText1)),
//         ),
//       ),
//     );
//   }
// }

// class LoginButton extends StatelessWidget {
//   final String buttonText;
//   final Color buttonColor;
//   final Color borderColor;
//   final dynamic onPressed;
//   const LoginButton(
//       {@required this.buttonColor,
//       @required this.buttonText,
//       @required this.borderColor,
//       @required this.onPressed});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         width: 200.0,
//         height: 40.0,
//         decoration: BoxDecoration(
//             border: Border.all(color: borderColor),
//             color: buttonColor,
//             borderRadius: BorderRadius.circular(25.0)),
//         child: Center(
//             child:
//                 Text(buttonText, style: Theme.of(context).textTheme.bodyText1)),
//       ),
//     );
//   }
// }
