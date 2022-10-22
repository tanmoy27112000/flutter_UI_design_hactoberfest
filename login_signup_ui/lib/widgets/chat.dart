import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

var messageNum;
Widget chat(name, message, dynamic unread_msg, img) {
  messageNum = unread_msg;
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    child: ListTile(
      leading: CircleAvatar(
        radius: 37,
        backgroundImage: NetworkImage(img),
        backgroundColor: Colors.transparent,
      ),
      tileColor: Colors.white,
      title: Text(
        name,
        style: TextStyle(color: Color(0xff1f1f1f)),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Color(0xff878787)),
      ),
      trailing: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              "8:93",
              style: TextStyle(color: Color(0xff878787)),
            ),
          ),
          _readRecipt(),
        ],
      ),
    ),

    actions: <Widget>[
      IconSlideAction(
        caption: "Delete",
        color: Colors.red,
        icon: Icons.delete,
        onTap: () {},
      ),
      IconSlideAction(
        caption: "Archive",
        color: Colors.green,
        icon: Icons.download,
        onTap: () {},
      )
    ],

// left action bar
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: "Block",
        color: Colors.black,
        icon: Icons.block_rounded,
        onTap: () {},
      )
    ],
  );
}

Widget _readRecipt() {
  if (messageNum == 0) {
    return Icon(
      Icons.check,
      color: Colors.blue,
      size: 22,
    );
  }
  return CircleAvatar(
      child: Text(
        messageNum.toString(),
        style: TextStyle(
          fontSize: 11,
        ),
      ),
      radius: 10.5,
      backgroundColor: Colors.red);
}

Widget build(BuildContext context) {
  return new Container(child: _readRecipt());
}
