import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MaterialApp( home: MyHomePage(),));  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  _HomePageState createState() => _HomePageState();  
}  
  
class _HomePageState extends State<MyHomePage> {  
  bool valuefirst = false;  
  bool valuesecond = false;  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(title: Text('Flutter Checkbox Example'),),  
        body: Container(  
  
            child: Column(  
              children: <Widget>[  
                Row(  
                  children: <Widget>[  
                    SizedBox(width: 10,),  
                    Text('Checkbox without Header and Subtitle: ',style: TextStyle(fontSize: 17.0), ),  
                    Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.valuefirst,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.valuefirst = value;  
                        });  
                      },  
                    ),  
                    Checkbox(  
                      value: this.valuesecond,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.valuesecond = value;  
                        });  
                      },  
                    ),  
                  ],  
                ),  
              ],  
            )  
        ),  
      ),  
    );  
  }  
}  
