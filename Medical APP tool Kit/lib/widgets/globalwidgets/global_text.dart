import 'package:flutter/cupertino.dart';

Widget textWidget({
  dynamic textValue,
  double? sizeValue,
  String? familyValue,
  Color? colorValue,
  FontWeight? weightValue,
}) {
  return Text(
    textValue,
    style: TextStyle(
      fontSize: sizeValue,
      fontFamily: familyValue,
      color: colorValue,
      fontWeight: weightValue,
    ),
  );
}
