import 'package:flutter/material.dart';
import 'package:login/datepicker.dart';

class TaskInput extends StatefulWidget {
  const TaskInput({Key? key}) : super(key: key);

  @override
  _TaskInputState createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: Container(
          margin: EdgeInsets.all(34),
          child: Column(children: <Widget>[
            Align(
              alignment: FractionalOffset.topLeft,
              child: Text("Task Title",
                  style: TextStyle(color: Color(0xff6d6d6e), fontSize: 21)),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter Your Title Here"),

            ),
            Align(
              alignment: FractionalOffset.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 29.0),
                child: Text("What is to be done?",
                    style: TextStyle(color: Color(0xff6d6d6e), fontSize: 19)),
              ),
            ),
            TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration:
                  InputDecoration(hintText: "Enter Your Task Discription"),
            ),
            datePicker()
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
