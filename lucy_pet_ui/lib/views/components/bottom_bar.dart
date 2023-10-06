// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: _selectIndex == 0
//                           ? SvgPicture.asset("assets/home_selected.svg")
//                           : SvgPicture.asset("assets/home_unselected.svg")),
//                 ),
//                 Expanded(
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: _selectIndex == 1
//                           ? SvgPicture.asset("assets/cart_selected.svg")
//                           : SvgPicture.asset("assets/cart_unselected.svg")),
//                 ),
//                 Expanded(
//                   child: IconButton(
//                       onPressed: () {},
//                       icon: _selectIndex == 2
//                           ? SvgPicture.asset("assets/profile_selected.svg")
//                           : SvgPicture.asset("assets/profile_unselected.svg")),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
