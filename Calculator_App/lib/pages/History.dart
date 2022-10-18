// ignore_for_file: file_names

import 'package:calculator/pages/Scientific.dart';
import 'package:flutter/material.dart';
import 'Scientific.dart';

// ignore: camel_case_types
class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This Entire Page is Just For Showing History Of The Calculations In a List
    List items;
    items = Calculator.history();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'History',
          ),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Text(items[index]);
            }));
  }
}
