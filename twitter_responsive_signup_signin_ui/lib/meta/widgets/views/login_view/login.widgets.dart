import 'package:flutter/material.dart';
import 'package:twitter_clone/app/routes/routes.dart';
import 'package:twitter_clone/app/shared/dimensions.dart';

final emailController = TextEditingController();
final passwordController = TextEditingController();

class LoginTextField extends StatelessWidget {
  final bool hideText;
  final String hintText;
  final TextEditingController textEditingController;

  const LoginTextField(
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

class LoginCredentialsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Column(
        children: [
          vSizedBox2,
          LoginTextField(
            hideText: false,
            hintText: "Phone, Email",
            textEditingController: emailController,
          ),
          vSizedBox2,
          LoginTextField(
            hideText: true,
            hintText: "Password",
            textEditingController: passwordController,
          ),
          vSizedBox2,
          TextButton(onPressed: () {}, child: Text("Login")),
          vSizedBox3,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    style: Theme.of(context).textTheme.headline6,
                    text: "Forget password?"),
              ])),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(SignupRoute),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      style: Theme.of(context).textTheme.headline6,
                      text: "Signup for Twitter"),
                ])),
              ),
            ],
          )
        ],
      ),
    );
  }
}
