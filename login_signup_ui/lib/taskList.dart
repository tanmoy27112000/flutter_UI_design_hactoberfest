import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:login/tasksedit.dart';
import 'package:login/todo.dart';

import 'datepicker.dart';

class TaskList extends StatefulWidget {
  dynamic Task;
  dynamic detail;
  dynamic date;
  TaskList(
      {Key? key, required this.Task, required this.detail, required this.date})
      : super(key: key);

  @override
  _TaskListState createState() => _TaskListState(Task, detail, date);
}

class _TaskListState extends State<TaskList> {
  var value = false;
  dynamic task;
  dynamic detail;
  dynamic date;
  var editTask = "";
  var taskDone = [];
  _TaskListState(this.task, this.detail, this.date);
  EditFunction(index) {
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("Tip"),
            actions: <Widget>[
              TextFormField(
                initialValue: task[index],
                onChanged: (value) {
                  editTask = value;
                },
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      task[index] = editTask;
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text("Update"))
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: new Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
            child: Row(
              children: [
                new CircleAvatar(
                  backgroundImage: AssetImage("assets/boy.png"),
                  radius: 24,
                  backgroundColor: Colors.yellow,
                ),
                Align(
                  alignment: FractionalOffset.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: new Text(
                      ' Todo List ',
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [Color(0xff6903a3), Color(0xffae4ce6)]),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]),
        ),
        preferredSize: new Size(MediaQuery.of(context).size.width, 120.0),
      ),
      body: Column(
        children: [
          Container(
            height: 52,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Task Done: ${taskDone.length}",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.49,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Due Task: ${task.length}",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.96,
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        height: 16,
                      ),
                  itemCount: task.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2011),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        child: ListTile(
                          leading: Checkbox(
                            activeColor: Colors.green,
                            value: value,
                            onChanged: (value) => setState(() {
                              this.value = value!;
                            }),
                          ),
                          title: Text(
                            task[index],
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff737373)),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              detail[index],
                              style: TextStyle(
                                  fontSize: 12.5, color: Color(0xff8c8c8c)),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Icon(Icons.date_range_sharp),
                              ),
                              Text(
                                date[index],
                                style: TextStyle(
                                    fontSize: 11, color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ),

                      actions: <Widget>[
                        IconSlideAction(
                          caption: "Edit",
                          color: Colors.green,
                          icon: Icons.edit,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Taskedit(
                                    Task: task,
                                    detail: detail,
                                    date: datePicker().getDate(),
                                    Taskindex: index)));
                          },
                        )
                      ],
                      // left action bar
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: "Delete",
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            setState(() {
                              task.removeAt(index);
                            });
                          },
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
