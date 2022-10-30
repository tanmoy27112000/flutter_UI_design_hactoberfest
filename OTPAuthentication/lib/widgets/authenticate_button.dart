import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationButton extends StatelessWidget {
  String? title;
  String? imageAddress;
  Color? color;
  AuthenticationButton({this.title, this.imageAddress, this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: const BorderRadius.all(Radius.circular(35)),
      child: InkWell(
        onTap: () {},
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE2E2E2)),
            borderRadius: const BorderRadius.all(Radius.circular(35)),
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageAddress ?? 'images/google.png'),
              const SizedBox(
                width: 5,
              ),
              Center(
                  child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Connect to ',
                        style: GoogleFonts.nunito(
                            color:
                                title == 'Apple' ? Colors.white : Colors.black,
                            fontSize: 14)),
                    TextSpan(
                        text: title,
                        style: GoogleFonts.nunito(
                            color:
                                title == 'Apple' ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
