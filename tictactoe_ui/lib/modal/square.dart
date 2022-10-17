import 'package:flutter/material.dart';
import '../widgets/xoro.dart';
import '../screens/home.dart';

class Square extends StatefulWidget {
  const Square({Key? key}) : super(key: key);

  @override
  State<Square> createState() => _SquareState();
}

String _lastValue = '';
bool isPressed = false;

class _SquareState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_lastValue == '') {
          setState(() {
            isPressed = true;
            _lastValue = 'x';
          });
        } else {
          _lastValue == 'x' ? _lastValue = 'o' : _lastValue = 'x';
        }
        // isPressed = false;
      },
      child: Container(
        width: 100,
        height: 100,
        child: isPressed == true
            ? (_lastValue == 'x'
                ? Image.network(
                    'https://static.vecteezy.com/system/resources/previews/001/192/548/original/x-png.png')
                : Image.network(
                    'https://www.kindpng.com/picc/m/3-31596_letter-o-png-transparent-png.png'))
            : Container(),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
