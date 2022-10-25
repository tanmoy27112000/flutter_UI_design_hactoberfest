import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:login/taskList.dart';
import 'package:story_view/story_view.dart';
import 'datepicker.dart';

class Taskedit extends StatefulWidget {
  List Task;
  List detail;
  List date;
  int Taskindex;
  Taskedit(
      {Key? key,
      required this.Task,
      required this.detail,
      required this.date,
      required this.Taskindex})
      : super(key: key);

  @override
  _TaskeditState createState() => _TaskeditState(Task, detail, date, Taskindex);
}

class _TaskeditState extends State<Taskedit> {
  List task;
  List detail;
  List date;
  int Taskindex;
  var editTask = "";
  var editDetail = "";
  var editDate = "";
  _TaskeditState(this.task, this.detail, this.date, this.Taskindex);

  // var editTask = "";

  notEmpytyChecker() {
    setState(() {
      if (editTask.isNotEmpty) {
        task[Taskindex] = editTask;
        Navigator.of(context).pop();
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
                TextButton(onPressed: () {}, child: Text("Back"))
              ],
            );
          },
        );
      }
    });
  }

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
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Your Title Here"),
                initialValue: task[Taskindex],
                onChanged: (value) {
                  editTask = value;
                },
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
                initialValue: detail[Taskindex],
                keyboardType: TextInputType.multiline,
                onChanged: (value) {
                  editDetail = value;
                },
                decoration:
                    InputDecoration(hintText: "Enter Your Task Discription"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            notEmpytyChecker();

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    TaskList(Task: task, detail: detail, date: date)));
            setState(() {
              task[Taskindex] = editTask;
              detail[Taskindex] = editDetail;
            });
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}