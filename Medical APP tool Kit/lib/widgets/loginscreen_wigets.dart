import 'package:drsimple/services/login_service.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/login%20screen/forget%20password/enter_phonenumber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneFeild extends StatelessWidget {
  const PhoneFeild({
    Key? key,
    required this.phoneNumber,
    this.padding,
  }) : super(key: key);
  final TextEditingController phoneNumber;
  final padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding ??
          EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.05,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),
      child: TextFormField(
          controller: phoneNumber,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Handynummer darf nicht leer sein");
            }
            return null;
          },
          onSaved: (value) {
            phoneNumber.text = value!;
          },

          //////////////////
          keyboardType: TextInputType.phone,
          style: TextStyle(color: inputTextColor),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 12.0)),
            hintText: 'Handynummer',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

class LoginPhoneFeild extends StatefulWidget {
  const LoginPhoneFeild(
      {Key? key, required this.phoneNumber, this.padding, this.initialValue})
      : super(key: key);
  final TextEditingController phoneNumber;
  final padding;
  final initialValue;

  @override
  State<LoginPhoneFeild> createState() => _LoginPhoneFeildState();
}

class _LoginPhoneFeildState extends State<LoginPhoneFeild> {
  @override
  void initState() {
    widget.phoneNumber.text = widget.initialValue ?? "+49";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // phoneNumber.text = initialValue ?? "";
    return Container(
      margin: widget.padding ??
          EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.05,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),
      child: TextFormField(
          controller: widget.phoneNumber,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Handynummer darf nicht leer sein");
            }
            return null;
          },
          onSaved: (value) {
            widget.phoneNumber.text = value!;
          },

          //////////////////
          keyboardType: TextInputType.phone,
          style: TextStyle(color: inputTextColor),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 12.0)),
            hintText: 'Handynummer',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////

class EnterPasssword extends StatelessWidget {
  const EnterPasssword({
    Key? key,
    this.hintText,
    required this.passwordController,
    this.margin,
  }) : super(key: key);
  final TextEditingController passwordController;
  final margin;
  final hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.06,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),
      child: TextFormField(
          controller: passwordController,
          ///////Validator
          obscureText: true,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Passwort darf nicht leer sein");
            }
            // else if (value != confirmPasswordController.text) {
            //   return ("Passwort stimmt nict uberein");
            // }
            return null;
          },
          onSaved: (value) {
            passwordController.text = value!;
          },

          //////////////////

          style: TextStyle(color: inputTextColor, height: 1),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 22.0)),
            hintText: hintText ?? 'Passwort',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword(
      {Key? key,
      required this.confirmPassword,
      required this.passwordController,
      this.margin})
      : super(key: key);
  final TextEditingController confirmPassword;
  final TextEditingController passwordController;
  final margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.06,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.015)),
      ),
//dont put height in the container

      child: TextFormField(
          controller: confirmPassword,
          ///////Validator
          validator: (value) {
            if (value!.isEmpty) {
              return ("Passwort kann nicht leer sein");
            } else if (value != passwordController.text) {
              return ("Passwort stimmt nicht überein");
            }
            return null;
          },
          onSaved: (value) {
            confirmPassword.text = value!;
          },
          style: TextStyle(color: inputTextColor, height: 1),
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            fillColor: Colors.grey.withOpacity(0.2),
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 12.0)),
            hintText: 'Passwort bestätigen',
            focusColor: Colors.black,
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300),
          )),
    );
  }
}

class CountinoueButton extends StatelessWidget {
  const CountinoueButton(
      {Key? key,
      required this.phone,
      required this.password,
      required this.formKey})
      : super(key: key);
  final String phone;
  final String password;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.1,
      ),
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.068,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: mainThemeColor,
          ),
          onPressed: () async {
            if (formKey.currentState!.validate()) {}

            Get.find<LoginAPiService>()
                .loginUser(phone: phone, password: password);
          },
          child: Text(
            "Weiter",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
          )),
    ));
  }
}

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const EnterPhoneNumberForgetPassword(),
            transition: Transition.downToUp);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.012,
          ),
          child: const Text(
            "Passwort vergessen?",
            style: TextStyle(
                color: mainThemeColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.5),
          ),
        ),
      ),
    );
  }
}
