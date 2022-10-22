import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

var mydate = [];
class datePicker extends StatefulWidget {
  getDate() {    return mydate;
  }

  @override
  State<StatefulWidget> createState() {
    return _datePicker();
  }
}

class _datePicker extends State<datePicker> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 1),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Center(
            child: TextField(
          controller: dateinput,
          decoration: InputDecoration(
              icon: Icon(Icons.calendar_today), labelText: "Due Date"),
          readOnly: true,
          onTap: () async {
            final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(
                    2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              //you can implement different kind of Date Format here according to your requirement

              setState(() {
                dateinput.text = formattedDate;
                mydate.add(dateinput.text);
                //set output date to TextField value.
              });
            } else {
              print("Date is not selected");
            }
          },
        )));
  }
}
