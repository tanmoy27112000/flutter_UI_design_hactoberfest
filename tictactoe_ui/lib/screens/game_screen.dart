import 'package:flutter/material.dart';
import '../modal/player.dart';
import '../widgets/scoreboard.dart';
import '../modal/square.dart';

class GameScreen extends StatefulWidget {
  GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

String lastValue = 'x';
bool _gameOver = false;
bool _isDraw = false;
List<String>? gameBoard = ['', '', '', '', '', '', '', '', ''];
int xScore = 0;
int oScore = 0;

class _GameScreenState extends State<GameScreen> {
  void _resetGame() {
    setState(() {
      gameBoard = ['', '', '', '', '', '', '', '', ''];
      _gameOver = false;
      _isDraw = false;
    });
  }

  void _restartGame() {
    setState(() {
      gameBoard = ['', '', '', '', '', '', '', '', ''];
      _gameOver = false;
      _isDraw = false;
      xScore = 0;
      oScore = 0;
      lastValue = 'x';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.1),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "ScoreBoard",
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
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                // color: Colors.white,
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.05),
                    Colors.white70
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 5,
                    blurRadius: 10,
                    // offset: Offset(10, 10),
                  ),
                ],
              ),
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'X',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        // thickness: 5.0,
                      ),
                      Text(
                        '$xScore',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Colors.black26,
                                blurRadius: 20,
                                offset: Offset(2, 4),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black.withOpacity(0.5),
                    thickness: 3.0,
                  ),
                  Column(
                    children: [
                      const Text(
                        'O',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.5),
                        thickness: 3.0,
                      ),
                      Text(
                        '$oScore',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _gameOver == true
                ? (_isDraw == true
                    ? const Text(
                        'Draw',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      )
                    : Text(
                        '${lastValue.toUpperCase()} Wins',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ))
                : Container(),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 350,
              width: 300,
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  return InkWell(
                    onTap: _gameOver
                        ? null
                        : () {
                            if (gameBoard![index] == '') {
                              setState(() {
                                gameBoard![index] = lastValue;
                                lastValue == 'x'
                                    ? lastValue = 'o'
                                    : lastValue = 'x';
                              });
                            }

                            if ((gameBoard![0] == 'x' &&
                                    gameBoard![1] == 'x' &&
                                    gameBoard![2] == 'x') ||
                                (gameBoard![3] == 'x' &&
                                    gameBoard![4] == 'x' &&
                                    gameBoard![5] == 'x') ||
                                (gameBoard![6] == 'x' &&
                                    gameBoard![7] == 'x' &&
                                    gameBoard![8] == 'x') ||
                                (gameBoard![0] == 'x' &&
                                    gameBoard![3] == 'x' &&
                                    gameBoard![6] == 'x') ||
                                (gameBoard![1] == 'x' &&
                                    gameBoard![4] == 'x' &&
                                    gameBoard![7] == 'x') ||
                                (gameBoard![2] == 'x' &&
                                    gameBoard![5] == 'x' &&
                                    gameBoard![8] == 'x') ||
                                (gameBoard![0] == 'x' &&
                                    gameBoard![4] == 'x' &&
                                    gameBoard![8] == 'x') ||
                                (gameBoard![2] == 'x' &&
                                    gameBoard![4] == 'x' &&
                                    gameBoard![6] == 'x')) {
                              setState(() {
                                _gameOver = true;
                                xScore++;
                              });
                            } else if ((gameBoard![0] == 'o' &&
                                    gameBoard![1] == 'o' &&
                                    gameBoard![2] == 'o') ||
                                (gameBoard![3] == 'o' &&
                                    gameBoard![4] == 'o' &&
                                    gameBoard![5] == 'o') ||
                                (gameBoard![6] == 'o' &&
                                    gameBoard![7] == 'o' &&
                                    gameBoard![8] == 'o') ||
                                (gameBoard![0] == 'o' &&
                                    gameBoard![3] == 'o' &&
                                    gameBoard![6] == 'o') ||
                                (gameBoard![1] == 'o' &&
                                    gameBoard![4] == 'o' &&
                                    gameBoard![7] == 'o') ||
                                (gameBoard![2] == 'o' &&
                                    gameBoard![5] == 'o' &&
                                    gameBoard![8] == 'o') ||
                                (gameBoard![0] == 'o' &&
                                    gameBoard![4] == 'o' &&
                                    gameBoard![8] == 'o') ||
                                (gameBoard![2] == 'o' &&
                                    gameBoard![4] == 'o' &&
                                    gameBoard![6] == 'o')) {
                              setState(() {
                                _gameOver = true;
                                oScore++;
                              });
                            } else if (gameBoard![0] != '' &&
                                gameBoard![1] != '' &&
                                gameBoard![2] != '' &&
                                gameBoard![3] != '' &&
                                gameBoard![4] != '' &&
                                gameBoard![5] != '' &&
                                gameBoard![6] != '' &&
                                gameBoard![7] != '' &&
                                gameBoard![8] != '') {
                              setState(() {
                                print('Game Over');
                                _gameOver = true;
                                _isDraw = true;
                              });
                            }

                            if (_gameOver == true) {
                              lastValue == 'x'
                                  ? lastValue = 'o'
                                  : lastValue = 'x';
                              _resetGame;
                            }
                          },
                    child: Container(
                      width: 100,
                      height: 100,
                      child: gameBoard![index] == ''
                          ? null
                          : gameBoard![index] == 'x'
                              ? Image.asset('images/x.jpg')
                              : Image.asset('images/o.jpg'),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black38.withOpacity(0.1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 10,
                            // offset: Offset(10, 10),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Text(
              "${lastValue.toUpperCase()} 's Turn",
              style: const TextStyle(
                fontSize: 30,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: _resetGame,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Play Again',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.restart_alt,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: _restartGame,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Restart Game',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.restart_alt,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
            _restartGame();
          },
          child: const Text(
            "Back",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
