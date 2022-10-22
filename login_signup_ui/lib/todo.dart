import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:login/taskList.dart';
import 'package:story_view/story_view.dart';

import 'datepicker.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController tasksController = TextEditingController();
  TextEditingController tasksDetailController = TextEditingController();

  var editTask = "";
  final List<String> Tasks = [];
  final List<String> detail = [];

  notEmpytyChecker() {
    setState(() {
      if (tasksController.text.isNotEmpty &&
          tasksDetailController.text.isNotEmpty) {
        Tasks.add(tasksController.text);
        detail.add(tasksDetailController.text);
        //feild clear
        tasksController.clear();
        tasksDetailController.clear();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TaskList(
                  Task: Tasks,
                  detail: detail,
                  date: datePicker().getDate(),
                )));
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("Tip"),
              content: Text("Sorry You Can't add empty task please input "),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Back"))
              ],
            );
          },
        );
      }
    });
  }

// Screen Code
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todo Task"),
        ),
        body: Container(
          margin: EdgeInsets.all(34),
          child: Column(
            children: <Widget>[
              Align(
                alignment: FractionalOffset.topLeft,
                child: Text("Task Title",
                    style: TextStyle(color: Color(0xff6d6d6e), fontSize: 21)),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter Your Title Here"),
                controller: tasksController,
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
                controller: tasksDetailController,
                decoration:
                    InputDecoration(hintText: "Enter Your Task Discription"),
              ),
              datePicker(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.purple,
          onPressed: () {
            notEmpytyChecker();
          },
          
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
