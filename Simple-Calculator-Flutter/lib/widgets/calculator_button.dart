import 'package:calculator/models/result_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  String symbol;
  Color? colour;
  VoidCallback? specialCallBack;
  CalculatorButton({this.symbol = '', this.specialCallBack, this.colour});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: specialCallBack != null
          ? specialCallBack
          : () {
              Provider.of<ResultData>(context, listen: false)
                  .appendExpression(symbol);
            },
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        color: colour != null ? colour : Colors.pink,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(6),
        child: symbol == '<'
            ? Icon(Icons.backspace_rounded)
            : Text(
                '$symbol',
                style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
