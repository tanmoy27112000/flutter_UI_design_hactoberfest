
import 'package:flutter/material.dart';
import 'StoryPageView.dart';

class story extends StatelessWidget {
  const story({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
   dense:true, 
    leading: GestureDetector(
  onTap: (){   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StoryPageView()),
            ); },
      child: CircleAvatar(
        radius: 23,
         backgroundImage:
                    NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQf19OPR_w3mfClYNOf1WdRbvQfgib2wAmaw&usqp=CAU"),
                backgroundColor: Colors.transparent,
      ),
    ),
    tileColor: Colors.white,
    title: Text(
      "Hamza Office",
      style: TextStyle(color: Color(0xff1f1f1f)),
    ),
    subtitle: Text(
      "Today at ",
      style: TextStyle(color: Color(0xff878787)),
    ),
   
        
    
  );
  }
}









