import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_page/Screens/login-screen.dart';
import 'package:login_signup_page/pallette.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'images/login_page.jpg'
    ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,
              color: KWhite,
              ),
            ),
            title: Text('Forgot Password',
              style: kBodyText,
            ),
          centerTitle: true,
          ),
          body:Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*0.1,

                    ),
                    Container(
                      width: size.width*0.8,
                      child: Text("Enter your Email we will send instruction to reset your password",
                      style:kBodyText),
                      

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(icon: FontAwesomeIcons.envelope, hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done
                    ),
                    RoundedButton(buttonName: 'Send')
                    
                  ],
                ),
              )
            ],
          )

        ),


      ],
    );
  }
}
