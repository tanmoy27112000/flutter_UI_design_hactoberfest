import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map vals = {};
  @override
  Widget build(BuildContext context) {
    vals = vals.isNotEmpty
        ? vals
        : ModalRoute.of(context)!.settings.arguments as Map;
    String img = vals['isDayTime'] ? 'Day.jpeg' : 'image10.jpg';
    // print(vals);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('Assets/$img'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/3');
                    setState(() {
                      vals = {
                        'time': result['time'],
                        'isDayTime': result['isDayTime'],
                        'location': result['location'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit location')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  vals['location'],
                  style: TextStyle(fontSize: 28, letterSpacing: 2.0),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              vals['time'],
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
