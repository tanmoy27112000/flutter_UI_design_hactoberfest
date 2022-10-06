// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/answer.dart';
import '../widgets/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Hangman extends StatefulWidget {
  Hangman({Key? key}) : super(key: key);

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  final List<String> _words = [
    "BRAVE",
    "SPORT",
    "CROWS",
    "FREED",
    "SWIMS",
    "DRIVE",
    "BREAD",
    "CREAM",
    "HOVER",
    "SMART",
  ];
  String answer = "BRAVE";
  bool _isCorrect = false;
  List<String> userAnswer = [' ', ' ', ' ', ' ', ' '];
  int currentWord = 0;
  int currentIndex = 0;
  int counter = 8;
  bool _gameOver = false;
  String get gameStatus {
    if (userAnswer.contains(' ')) {
      return "Game Over!You Lost";
    } else {
      return "Game Over!You Won";
    }
  }

  String get value {
    return letters[currentIndex];
  }

  void findLetter() {
    for (int i = 0; i < answer.length; i++) {
      if (letters[currentIndex] == answer[i]) {
        setState(() {
          userAnswer[i] = answer[i];
          _isCorrect = true;
        });
      } else {
        continue;
      }
    }
  }

  List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'I',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 44, 122, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 300,
            child: Image.asset(
              'images/${8 - counter}.png',
              cacheHeight: 700,
              cacheWidth: 700,
            ),
          ),
          Text(
            !_gameOver ? " " : gameStatus,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            'You have $counter chances',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          // Text(
          //   value,
          //   style: const TextStyle(
          //     color: Colors.white,
          //     fontSize: 30,
          //   ),
          // ),
          SizedBox(
            height: 100,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: answer.length,
                padding: const EdgeInsets.all(8),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return AnswerBox(
                    letter: userAnswer[index],
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 300,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: letters.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 50,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: _gameOver
                        ? null
                        : () {
                            currentIndex = index;
                            findLetter();
                            setState(() {
                              _isCorrect ? counter = counter : counter--;
                            });
                            if (counter == 0 || !(userAnswer.contains(' '))) {
                              setState(() {
                                currentWord++;
                                answer = _words[currentWord];
                                _gameOver = true;
                              });
                            }
                            _isCorrect = false;
                          },
                    child: LetterButton(
                      letter: letters[index],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                // bottom: 20,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter = 8;
                      _gameOver = false;
                      userAnswer = [' ', ' ', ' ', ' ', ' '];
                    });
                  },
                  icon: const Icon(
                    Icons.restore_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: !_gameOver
                      ? null
                      : () {
                          setState(() {
                            counter = 8;
                            _gameOver = false;
                            userAnswer = [' ', ' ', ' ', ' ', ' '];
                          });
                        },
                  child: Row(
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          color: !_gameOver ? Colors.grey : Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: !_gameOver ? Colors.grey : Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
