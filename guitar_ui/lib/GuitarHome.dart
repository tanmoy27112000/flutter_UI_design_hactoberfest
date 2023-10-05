import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class GuitarHomeState extends StatefulWidget {
  const GuitarHomeState({super.key});

  @override
  State<GuitarHomeState> createState() => __GuitarHomeStateState();
}

class __GuitarHomeStateState extends State<GuitarHomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : Stack (
      children: [

    Positioned.fill(
      child: Image.asset('images/guitarback.jpeg', fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.35),
      colorBlendMode: BlendMode.darken,
      ),
      ),

        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: [
              

              const SizedBox(height : 100,),
              const Align(alignment: Alignment.centerRight,child: Icon(FontAwesomeIcons.guitar,color: Colors.white,size:40),),
                const Align(alignment: Alignment.centerRight,child: Text("Internal", style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),),
                  const Align(alignment: Alignment.centerRight,child: Text("Voice", style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),),
         const SizedBox(height: 300,),
         const Center(child: Text("Where Words", style: TextStyle(color: Colors.white, fontSize: 25,fontWeight:FontWeight.w700 ),),),
           const Center(child: Text("fails", style: TextStyle(color: Colors.white, fontSize: 25,fontWeight:FontWeight.w700 ),),),
            const Center(child: Text("music speaks", style: TextStyle(color: Colors.white, fontSize: 25,fontWeight:FontWeight.w700 ),),),
          
          const SizedBox(height: 30,),

          InkWell(
            onTap: () {

            },
            child: Container(margin: const EdgeInsets.symmetric(horizontal: 40),
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,color: Colors.white.withOpacity(0.3),
              border: Border.all(color:Colors.white,width: 0.7),

            ),

            child: const Icon(Icons.music_note,color: Colors.white,),

            ),
          ),

          const SizedBox(height: 30,),
          const Center(child: Text("Your search stops here", style: TextStyle(color: Colors.white,fontSize:20 ),),),
          const SizedBox(height: 20,),
          
          ]
          ,
        )
      ],
     )
    );
  }
}