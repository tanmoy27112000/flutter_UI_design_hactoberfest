import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/xoro.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Tic Tac Toe",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    blurRadius: 20,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: 250,
              child: Image.asset("images/logo.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            // const Text(
            //   "Who wil Go First?",
            //   style: TextStyle(fontSize: 25),
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Xoro(
            //       'https://static.vecteezy.com/system/resources/previews/001/192/548/original/x-png.png',
            //     ),
            //     Xoro(
            //       'https://www.kindpng.com/picc/m/3-31596_letter-o-png-transparent-png.png',
            //     ),
            //   ],
            // ),
            // Round(onPressed: (){}, child: ),
            // const SizedBox(
            //   height: 30,
            // ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game-screen');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 5,
                      blurRadius: 10,
                      // offset: Offset(10, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Play Game',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            blurRadius: 20,
                            offset: Offset(2, 4),
                          ),
                        ]),
                    softWrap: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
