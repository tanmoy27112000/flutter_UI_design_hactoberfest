//import 'dart:js' show context;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_page/pallette.dart';
import 'package:login_signup_page/widgets/widgets.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var kBodyText;
    return Stack(
      children: [
        BackgroundImage(image: 'images/login_page.jpg',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:Column(
            children: [
              Flexible(child: Padding(
                padding:  EdgeInsets.all(50.0),
                child: Center(
                  child: Text('HACKTOBERFEST 2K22',style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w100,

                  ),),
                ),
              ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                  TextInputField(icon:FontAwesomeIcons.envelope,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next),
                  passwordinput(icon:FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.done
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'
                    ),
                    child: Text("Forgot Password",
                        style:kBodyText),
                  ),
                  SizedBox(
                    height:25,
                  ),
                  RoundedButton(
                      buttonName:'Login'
                  ),
                  SizedBox(
                    height:25,
                  ),

                ],
              ),
              Column(
                children: [
                  GestureDetector(
                      onTap: () =>Navigator.pushNamed(context,'CreateNewAccount'),
                    child: Container(
                      child:Text(
                        'Create New Account',
                        style: kBodyText,
                      ),
                      decoration: BoxDecoration(
                          border:
                          Border(bottom: BorderSide(width: 1,
                              color: KWhite))) , // BoxDecoration

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )


            ],
          )
        )
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key, required this.image,
  }) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
        begin: Alignment.bottomCenter,
        end:Alignment.center,
        colors: [Colors.black,Colors.transparent]
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(image:  DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54,BlendMode.darken),

        ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, required this.buttonName,
  }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.08,
      width: size.width*0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
      color: KBlue),
      child: TextButton(
          onPressed: (){},
          child: Text(buttonName,
          style:kBodyText.copyWith(fontWeight: FontWeight.bold))),


    );
  }
}

class passwordinput extends StatelessWidget {
  const passwordinput({
    Key? key, required this.icon, required this.hint, required this.inputType, required this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height*0.08,
        width: size.width*0.8,
        decoration: BoxDecoration(color: Colors.grey[500]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Center(
          child: TextField(decoration:
          InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Icon(icon,
                  size: 28,color: Colors.white),
            ),
            hintText: hint,


            hintStyle: TextStyle(fontSize:22.5,color:Colors.white),
          ),
            obscureText: true,
            style: TextStyle(fontSize:22.5,color:Colors.black),
            keyboardType: inputType,
            textInputAction: inputAction,

          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
     const TextInputField({
    Key? key, required this.icon, required this.hint, required this.inputType, required this.inputAction,
  }) : super(key: key);

     final IconData icon;
     final String hint;
     final TextInputType inputType;
     final TextInputAction inputAction;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height*0.08,
        width: size.width*0.8,
        decoration: BoxDecoration(color: Colors.grey[500]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Center(
          child: TextField(decoration:
          InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Icon(icon,
              size: 28,color: Colors.white),
            ),
            hintText: hint,

            hintStyle: TextStyle(fontSize:22.5,color:Colors.white),
          ),
            style: TextStyle(fontSize:22.5,color:Colors.black),
            keyboardType: inputType,
            textInputAction: inputAction,

          ),
        ),
      ),
    );
  }
}
