import 'package:flutter/material.dart';
import 'package:twitter_clone/app/routes/routes.dart';
import 'package:twitter_clone/app/shared/dimensions.dart';

final nameContrrroller = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();

class SignupTextField extends StatelessWidget {
  final bool hideText;
  final String hintText;
  final TextEditingController textEditingController;

  const SignupTextField(
      {Key? key,
      required this.textEditingController,
      required this.hideText,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        obscureText: hideText,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.headline3,
            border: const OutlineInputBorder()));
  }
}

class SignupCredentialsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Column(
        children: [
            vSizedBox2,
          SignupTextField(
            hideText: false,
            hintText: "Username",
            textEditingController: nameContrrroller,
          ),
          vSizedBox2,
          SignupTextField(
            hideText: false,
            hintText: "Phone or Email",
            textEditingController: emailController,
          ),
          vSizedBox2,
          SignupTextField(
            hideText: true,
            hintText: "Password",
            textEditingController: passwordController,
          ),
          vSizedBox2,
          TextButton(onPressed: () {}, child: Text("Login")),
          vSizedBox3,
          GestureDetector(
            onTap: ()=> Navigator.of(context).pushNamed(LoginRoute),
            child: const Text("Login to Twitter")),
        ],
      ),
    );
  }
}
