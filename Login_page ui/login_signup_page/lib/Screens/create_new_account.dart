import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_page/pallette.dart';
import 'package:login_signup_page/widgets/widgets.dart';
class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'images/Register_page.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width*0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
                          child: CircleAvatar(
                            radius:size.width*0.13,
                            backgroundColor: Colors.grey[400]?.withOpacity(0.6),
                            child: Icon(FontAwesomeIcons.user,color: KWhite,size: size.width*0.1,),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height*0.07,
                      left:size.width*0.56,
                      child: Container(
                        height: size.width*0.1,

                        width: size.width*0.1,
                        decoration: BoxDecoration(
                          color: KBlue,
                          shape: BoxShape.circle,
                            border: Border.all(
                          color: KWhite,
                            width: 1
                        ),
                        ),
                        child: Icon(FontAwesomeIcons.arrowUp,
                        color: KWhite,),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width*0.05,
                ),
                Column(
                  children: [
                    TextInputField(icon: FontAwesomeIcons.user,
                        hint: 'User',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next
                    ),
                    TextInputField(icon: FontAwesomeIcons.book,
                        hint: 'Register Number',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next
                    ),
                    TextInputField(icon: FontAwesomeIcons.mobile,
                        hint: 'Mobile Number',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next
                    ),

                    TextInputField(icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next
                    ),
                    passwordinput(icon: FontAwesomeIcons.lock,
                        hint: 'Enter Password',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next
                    ), passwordinput(icon: FontAwesomeIcons.lock,
                        hint: 'Re-enter Password',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RoundedButton(buttonName: 'Register'),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                        style: kBodyText,),


                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text("Login",style:kBodyText.copyWith(color: KBlue,
                      fontWeight: FontWeight.bold)),
                    ),
                        ],
                    ),
                    SizedBox(
                      height: 20,
                    )

                  ],
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
