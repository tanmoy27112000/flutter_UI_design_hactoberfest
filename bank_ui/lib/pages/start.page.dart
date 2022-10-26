import 'package:bank_ui/widget/elevated.button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.7,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/profile1.png',
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo1.png',
                            height: size.height * 0.06,
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const Text(
                            'bank logo',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Banking Apps',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              '         lorem ipsum dolor sit amet\nlorem ipsum dolor sit amet dyan agd',
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Expanded(
              child: CustomElevatedButton(
                text: 'Sign Up',
                onPressed: () => context.go('/home-page'),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
