import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.6469569,size.height*0.3571143);
    path0.lineTo(size.width*0.6468966,size.height*0.5720000);
    path0.quadraticBezierTo(size.width*0.5376810,size.height*0.5715393,size.width*0.5012759,size.height*0.5713857);
    path0.cubicTo(size.width*0.5010517,size.height*0.5715429,size.width*0.4612241,size.height*0.5140571,size.width*0.4615948,size.height*0.4693286);
    path0.cubicTo(size.width*0.4613621,size.height*0.4135714,size.width*0.4869828,size.height*0.3652857,size.width*0.4999224,size.height*0.3568857);
    path0.quadraticBezierTo(size.width*0.5366810,size.height*0.3569429,size.width*0.6469569,size.height*0.3571143);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}


