// ignore_for_file: file_names

//Every Widget Used Is Clearly Described Here !!

import 'package:calculator/pages/History.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

const Color colorDark = Colors.black;
const Color colorLight = Colors.white;
// ignore: non_constant_identifier_names
List<String> History = [];

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();

  static List<String> history() {
    return (History);
  }
}

class _CalculatorState extends State<Calculator> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 18.0;
  double resultFontSize = 28.0;

  buttonPressed(String title) {
    setState(() {
      if (title == "C") {
        equation = "0";
        result = "0";
        equationFontSize = 18.0;
        resultFontSize = 28.0;
      } else if (title == "⌫") {
        equationFontSize = 28.0;
        resultFontSize = 18.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
          result = "0";
        }
      } else if (title == "=") {
        equationFontSize = 18.0;
        resultFontSize = 28.0;

        expression = equation;
        expression = expression.replaceAll('π', '3.141592653589793238');
        expression = expression.replaceAll('e', 'e^1');
        expression = expression.replaceAll('log', 'log10');
        expression = expression.replaceAll('°', '*3.141592653589793238/180');

        try {
          Parser p = Parser();

          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          String result1 = ('${exp.evaluate(EvaluationType.REAL, cm)}');
          double result2 = double.parse(result1);
          double result3 = double.parse((result2).toStringAsFixed(15));
          result = result3.toString();
          History.add(result);
        } catch (e) {
          result = "Error";
          History.add(result);
        }
      } else {
        equationFontSize = 28.0;
        resultFontSize = 18.0;
        if (equation == "0") {
          equation = title;
        } else {
          equation = equation + title;
        }
      }
    });
  }

  bool darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        darkMode ? darkMode = false : darkMode = true;
                      });
                    },
                    child: _switchMode()),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Text(
                    equation,
                    style: TextStyle(
                        fontSize: equationFontSize,
                        color: Colors.white,
                        shadows: const [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 20,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 40,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 60,
                          )
                        ]),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Text(
                    result,
                    style: TextStyle(
                        fontSize: resultFontSize,
                        color: Colors.white,
                        shadows: const [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 20,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 40,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 60,
                          )
                        ]),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '=',
                      style: TextStyle(
                          fontSize: 35,
                          color: darkMode ? Colors.white : Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonOval(title: 'cos'),
                  _buttonOval(title: 'tan'),
                  _buttonOval(title: 'sin'),
                  _buttonOval(title: 'log'),
                  _buttonOval(title: 'ln')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonRounded(
                      title: 'C',
                      textColor: darkMode ? Colors.white : Colors.redAccent),
                  _buttonRounded(
                      title: '⌫',
                      textColor: darkMode ? Colors.white : Colors.redAccent),
                  _buttonRounded(title: '°'),
                  _buttonRounded(title: '!'),
                  _buttonRounded(title: 'π')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonRounded(title: '7'),
                  _buttonRounded(title: '8'),
                  _buttonRounded(title: '9'),
                  _buttonRounded(title: '0'),
                  _buttonRounded(
                      title: '/',
                      textColor: darkMode ? Colors.white : Colors.redAccent)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonRounded(title: '4'),
                  _buttonRounded(title: '5'),
                  _buttonRounded(title: '6'),
                  _buttonRounded(title: 'e'),
                  _buttonRounded(
                      title: '*',
                      textColor: darkMode ? Colors.white : Colors.redAccent)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonRounded(title: '1'),
                  _buttonRounded(title: '2'),
                  _buttonRounded(title: '3'),
                  _buttonRounded(title: '^'),
                  _buttonRounded(
                      title: '-',
                      textColor: darkMode ? Colors.white : Colors.redAccent)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonRounded(title: '('),
                  _buttonRounded(title: '.'),
                  _buttonRounded(title: ')'),
                  _buttonRounded(
                      title: '=',
                      textColor: darkMode ? Colors.white : Colors.redAccent),
                  _buttonRounded(
                      title: '+',
                      textColor: darkMode ? Colors.white : Colors.redAccent)
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buttonRounded(
      {required String title, double padding = 12, Color? textColor}) {
    return GestureDetector(
        onTap: () => buttonPressed(title),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: BlinkContainer(
            darkMode: darkMode,
            borderRadius: BorderRadius.circular(25),
            padding: EdgeInsets.all(padding),
            child: SizedBox(
              width: padding * 2,
              height: padding * 2,
              child: Center(
                  // ignore: unnecessary_null_comparison
                  child: Text(
                title,
                style: TextStyle(
                    // ignore: prefer_if_null_operators
                    color: textColor != null
                        ? textColor
                        : darkMode
                            ? Colors.white
                            : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    shadows: const [
                      Shadow(
                        color: Colors.red,
                        blurRadius: 20,
                      ),
                      Shadow(
                        color: Colors.red,
                        blurRadius: 40,
                      ),
                      Shadow(
                        color: Colors.red,
                        blurRadius: 60,
                      )
                    ]),
              )),
            ),
          ),
        ));
  }

  Widget _buttonOval({required String title, double padding = 14}) {
    return GestureDetector(
        onTap: () => buttonPressed(title),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 20, 10, 15),
          child: BlinkContainer(
            darkMode: darkMode,
            borderRadius: BorderRadius.circular(10),
            padding: EdgeInsets.symmetric(
                horizontal: padding, vertical: padding / 2),
            child: SizedBox(
              width: padding * 2,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      // ignore: prefer_const_literals_to_create_immutables
                      shadows: [
                        const Shadow(
                          color: Colors.red,
                          blurRadius: 20,
                        ),
                        const Shadow(
                          color: Colors.red,
                          blurRadius: 40,
                        )
                      ]),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _switchMode() {
    return BlinkContainer(
      darkMode: darkMode,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        width: 96,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.redAccent,
          ),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.green : Colors.grey,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const history();
              }));
            },
            icon: const Icon(Icons.history_rounded),
            color: Colors.blue,
          )
        ]),
      ),
    );
  }
}

class BlinkContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  // ignore: use_key_in_widget_constructors
  const BlinkContainer(
      {this.darkMode = false,
      required this.child,
      required this.borderRadius,
      required this.padding});

  @override
  _BlinkContainerState createState() => _BlinkContainerState();
}

class _BlinkContainerState extends State<BlinkContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: darkMode ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                      color: darkMode ? Colors.red : Colors.blueGrey.shade200,
                      offset: const Offset(1.0, 1.0),
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                        color: darkMode ? Colors.red : Colors.white,
                        offset: const Offset(-1.0, -1.0),
                        blurRadius: 1,
                        spreadRadius: 0)
                  ]),
        child: widget.child,
      ),
    );
  }
}
