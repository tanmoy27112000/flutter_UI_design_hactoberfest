import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:charcode/charcode.dart';
import '../models/result_data.dart';

class CalculatorScreen extends StatefulWidget {
  static String id = "/CalculatorScreen";

  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool isInfoVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.pink, width: 5)),
                padding: EdgeInsets.all(3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurpleAccent, width: 3.5)),
                      width: 292,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${Provider.of<ResultData>(context).history}',
                            style: GoogleFonts.rubik(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '${Provider.of<ResultData>(context).expression}',
                            style: GoogleFonts.rubik(
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(
                            symbol: 'CE',
                            colour: Colors.green[500],
                            specialCallBack: () {
                              Provider.of<ResultData>(context, listen: false)
                                  .clearEverything();
                            }),
                        CalculatorButton(
                            symbol: 'C',
                            colour: Colors.green[500],
                            specialCallBack: () {
                              Provider.of<ResultData>(context, listen: false)
                                  .clearExpression();
                            }),
                        CalculatorButton(
                          symbol: '<',
                          colour: Colors.green[500],
                          specialCallBack: () {
                            Provider.of<ResultData>(context, listen: false)
                                .removeLastIndex();
                          },
                        ),
                        CalculatorButton(
                          symbol: '=',
                          colour: Colors.blue[500],
                          specialCallBack: () {
                            Provider.of<ResultData>(context, listen: false)
                                .findAnswer();
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(
                          symbol: 'e',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: 'sin',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: 'cos',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: 'tan',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(
                          symbol: '(',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: ')',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: '%',
                          colour: Colors.yellow[800],
                        ),
                        CalculatorButton(
                          symbol: '√',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(symbol: '7'),
                        CalculatorButton(symbol: '8'),
                        CalculatorButton(symbol: '9'),
                        CalculatorButton(
                          symbol: '/',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(symbol: '4'),
                        CalculatorButton(symbol: '5'),
                        CalculatorButton(symbol: '6'),
                        CalculatorButton(
                          symbol: 'x',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(symbol: '1'),
                        CalculatorButton(symbol: '2'),
                        CalculatorButton(symbol: '3'),
                        CalculatorButton(
                          symbol: '+',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalculatorButton(symbol: '0'),
                        CalculatorButton(symbol: '.'),
                        CalculatorButton(symbol: 'π'),
                        CalculatorButton(
                          symbol: '-',
                          colour: Colors.yellow[800],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isInfoVisible = !isInfoVisible;
                      });
                    },
                    icon: Icon(Icons.info),
                  ),
                ),
                Visibility(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\u2022  Angles are in radians, so use π",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\u2022  Answers will be in 2 decimal digits",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\u2022  Don't try to use 5π instead use 5xπ",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\u2022  Don't try to use 5e instead use 5xe",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\u2022  Only 15 characters can fit in the box",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  visible: isInfoVisible,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
