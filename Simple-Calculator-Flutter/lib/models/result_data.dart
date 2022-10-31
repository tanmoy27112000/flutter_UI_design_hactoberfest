import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class ResultData with ChangeNotifier {
  String _answer = '';
  String _history = '';
  String _expression = '';
  bool _isFresh = true;

  void appendExpression(String symbol) {
    if (_isFresh) {
      _expression = '';
      _isFresh = false;
    }
    if (symbol == 'π') {
      symbol = '3.14';
    }
    if (symbol == 'e') {
      symbol = '2.71';
    }
    if (_expression.length < 15) {
      _expression += symbol;
      notifyListeners();
    }
  }

  void removeLastIndex() {
    _expression = _expression.substring(0, _expression.length - 1);
    notifyListeners();
  }

  void clearEverything() {
    _isFresh = true;
    _expression = '0';
    _history = '0';
    notifyListeners();
  }

  void clearExpression() {
    _isFresh = true;
    _expression = '0';
    notifyListeners();
  }

  void findAnswer() {
    String e = _expression;
    _history = _expression;
    e = e.replaceAll("x", "*");
    e = e.replaceAll("%", "*0.01*");
    e = e.replaceAll('√', "sqrt");
    Parser p = Parser();
    try {
      Expression exp = p.parse(e);
      _expression =
          exp.evaluate(EvaluationType.REAL, ContextModel()).toString();
      double tempExp = double.parse(_expression);
      if (tempExp == tempExp.toInt()) {
        _expression = tempExp.toString();
      } else {
        _expression = tempExp.toStringAsFixed(2);
      }
    } catch (error) {
      _expression = "Invalid";
      _isFresh = true;
    }
    notifyListeners();
  }

  String get expression {
    return _expression;
  }

  String get history {
    return _history;
  }
}
