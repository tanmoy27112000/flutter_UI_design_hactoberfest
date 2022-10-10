import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/login_screen.dart';
import 'package:zoom_ui/widgets/custom_button.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
      child: CustomButton(
        text: 'Log Out',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
      ),
    );
  }
}
