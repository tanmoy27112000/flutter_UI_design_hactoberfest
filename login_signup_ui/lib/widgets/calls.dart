import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

final List<String> ContactName = [
  "Mashood",
  "Hussain",
  "James",
  "Talha",
  "David"
];
final List<dynamic> NumbersOfCall = [1, 2, 3, 6, 3];
final List<String> imgs = [
  "https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=20&m=1249496770&s=170667a&w=0&h=_SUv4odBqZIzcXvdK9rqhPBIenbyBspPFiQOSDRi-RI=",
  "https://media.wired.com/photos/60149f34056378f4af9cf9f1/191:100/w_2580,c_limit/Gear-Topo-Athletic-Ultraventure-Pro.jpg",
  "https://www.saucony.com/on/demandware.static/-/Sites-saucony_us-Library/default/dw37eca82f/content/seasonal-content/homepage/2021/08/12/images/best-sellers/endorphinshift2-d.jpg",
  "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRpZGFzJTIwc2hvZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  "https://footwearnews.com/wp-content/uploads/2020/05/adidas-continental-80.jpg",
  "https://footwearnews.com/wp-content/uploads/2020/05/adidas-continental-80.jpg",
  "https://media.istockphoto.com/photos/adidas-blue-shoes-for-women-picture-id543052632?k=20&m=543052632&s=612x612&w=0&h=w5295upJmjPSCrGfygyi4zZrX6xajCrLvFcr8IeUH1g=",
  "https://di2ponv0v5otw.cloudfront.net/posts/2020/04/14/5e95c61eae766fa2ec8ca6d2/m_5e95c73ad737fdde921f88e0.jpg"
];

class Calls extends StatelessWidget {
  Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.phone_outlined),
        title: Text('Call'),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondRoute()));
        });
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call logs"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: ContactName.length,
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 37,
                    backgroundImage: NetworkImage("${imgs[index]}"),
                    backgroundColor: Colors.transparent,
                  ),
                  tileColor: Colors.white,
                  title: Text(
                    "${ContactName[index]}",
                    style: TextStyle(color: Color(0xff1f1f1f)),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_missed_sharp,
                        color: Color(0xffd41e1e),
                        size: 19.0,
                      ),
                      Text(
                        "(${NumbersOfCall[index]}) Today at",
                        style: TextStyle(color: Color(0xff878787)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.call,
                          color: Colors.lightGreen,
                          size: 28.0,
                        ),
                      ),
                    ],
                  ),
                ),

// right action bar
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
            }),
      ),
    );
  }
}
