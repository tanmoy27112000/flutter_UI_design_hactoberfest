import 'package:flutter/material.dart';
import 'package:furrl_ui/CustomWidget/app_bar.dart';
import 'package:furrl_ui/CustomWidget/edit_frame.dart';

class EditFrame extends StatefulWidget {
  const EditFrame({Key? key}) : super(key: key);

  @override
  State<EditFrame> createState() => _EditFrameState();
}

class _EditFrameState extends State<EditFrame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: const [
          Appbar(withBackIcon: true, title: 'Edit Frame'),
          EditFrameWidget()

        ],),
      ),
    ));
  }
}
