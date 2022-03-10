part of '../mobile_home_screen.dart';

class MobileHomeContent extends StatefulWidget {
  const MobileHomeContent({Key? key}) : super(key: key);

  @override
  State<MobileHomeContent> createState() => _MobileHomeContentState();
}

class _MobileHomeContentState extends State<MobileHomeContent> {
  int numberOfSquares = 10 * 15;
  int numberInEachRow = 10;
  List squareStatus = []; // number of bombs around, revealed = true ?? false

  // bomb location
  int minBombLocation = 50;
  int maxBombLocation = 150;
  List<int> first = [1, 3, 5, 7, 9, 11, 13, 15];
  List<int> last = [2, 4, 6, 8, 10, 12, 14, 0];
  Random random = Random();
  List<int> bombLocation = [];
  int won = 0;

  // bomb revealed
  bool bombRevealed = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      bombLocation.clear();
    });

    // initialy, each square has 0 bomb around, and is not revealed
    for (int i = 0; i < numberOfSquares; i++) {
      squareStatus.add([0, false]);
    }

    while (bombLocation.length < random.nextInt(maxBombLocation)) {
      bombLocation.add(random.nextInt(maxBombLocation));
    }

    scanBombs();
  }

  void revealedSquares(int index) {
    // reveal current box if it is a number >= 1
    if (squareStatus[index][0] != 0) {
      setState(() {
        squareStatus[index][1] = true;
      });
    }

    // if current box is == 0
    else if (squareStatus[index][0] == 0) {
      // reveal the current box and all the boxes around it
      setState(() {
        squareStatus[index][1] = true;

        // reveal the boxes around the current box, unless it is a wall
        if (index % numberInEachRow != 0) {
          // if next box is not revealed yet and it is a 0, then recurse
          if (squareStatus[index - 1][0] == 0 &&
              squareStatus[index - 1][1] == false) {
            revealedSquares(index - 1);
          }

          squareStatus[index - 1][1] = true;
        }

        // reveal the top box
        if (index >= numberInEachRow) {
          if (squareStatus[index - numberInEachRow][0] == 0 &&
              squareStatus[index - numberInEachRow][1] == false) {
            revealedSquares(index - numberInEachRow);
          }

          squareStatus[index - numberInEachRow][1] = true;
        }

        // reveal the top right box
        if (index >= numberInEachRow &&
            index % numberInEachRow != numberInEachRow - 1) {
          if (squareStatus[index - numberInEachRow + 1][0] == 0 &&
              squareStatus[index - numberInEachRow + 1][1] == false) {
            revealedSquares(index - numberInEachRow + 1);
          }

          squareStatus[index - numberInEachRow + 1][1] = true;
        }

        // reveal the right box
        if (index % numberInEachRow != numberInEachRow - 1) {
          if (squareStatus[index + 1][0] == 0 &&
              squareStatus[index + 1][1] == false) {
            revealedSquares(index + 1);
          }

          squareStatus[index + 1][1] = true;
        }

        // reveal the bottom right box
        if (index < numberOfSquares - numberInEachRow &&
            index % numberInEachRow != numberInEachRow - 1) {
          if (squareStatus[index + numberInEachRow + 1][0] == 0 &&
              squareStatus[index + numberInEachRow + 1][1] == false) {
            revealedSquares(index + numberInEachRow + 1);
          }

          squareStatus[index + numberInEachRow + 1][1] = true;
        }

        // reveal the bottom box
        if (index < numberOfSquares - numberInEachRow) {
          if (squareStatus[index + numberInEachRow][0] == 0 &&
              squareStatus[index + numberInEachRow][1] == false) {
            revealedSquares(index + numberInEachRow);
          }

          squareStatus[index + numberInEachRow][1] = true;
        }

        // reveal the bottom left box
        if (index < numberOfSquares - numberInEachRow &&
            index % numberInEachRow != 0) {
          if (squareStatus[index + numberInEachRow - 1][0] == 0 &&
              squareStatus[index + numberInEachRow - 1][1] == false) {
            revealedSquares(index + numberInEachRow - 1);
          }

          squareStatus[index + numberInEachRow - 1][1] = true;
        }

        // reveal the left box
        if (index % numberInEachRow != 0) {
          if (squareStatus[index - 1][0] == 0 &&
              squareStatus[index - 1][1] == false) {
            revealedSquares(index - 1);
          }

          squareStatus[index - 1][1] = true;
        }

        // reveal the top left box
        if (index >= numberInEachRow && index % numberInEachRow != 0) {
          if (squareStatus[index - numberInEachRow - 1][0] == 0 &&
              squareStatus[index - numberInEachRow - 1][1] == false) {
            revealedSquares(index - numberInEachRow - 1);
          }

          squareStatus[index - numberInEachRow - 1][1] = true;
        }
      });
    }
  }

  void restartGame() {
    setState(() {
      bombRevealed = false;
      bombLocation.clear();
    });

    for (int i = 0; i < numberOfSquares; i++) {
      squareStatus[i][1] = false;
    }

    while (bombLocation.length < random.nextInt(maxBombLocation)) {
      bombLocation.add(Random().nextInt(maxBombLocation));
    }
  }

  void scanBombs() {
    for (int i = 0; i < numberOfSquares; i++) {
      // there is no bombs around iniitialy
      int numberOfBombsAround = 0;

      // check if there is a bomb around on the left
      if (bombLocation.contains(i - 1) && i % numberInEachRow != 0) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the right
      if (bombLocation.contains(i + 1) &&
          i % numberInEachRow != numberInEachRow - 1) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the top
      if (bombLocation.contains(i - numberInEachRow) && i >= numberInEachRow) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the bottom
      if (bombLocation.contains(i + numberInEachRow) &&
          i < numberOfSquares - numberInEachRow) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the top left
      if (bombLocation.contains(i - numberInEachRow - 1) &&
          i >= numberInEachRow &&
          i % numberInEachRow != 0) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the top right
      if (bombLocation.contains(i - numberInEachRow + 1) &&
          i >= numberInEachRow &&
          i % numberInEachRow != numberInEachRow - 1) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the bottom left
      if (bombLocation.contains(i + numberInEachRow - 1) &&
          i < numberOfSquares - numberInEachRow &&
          i % numberInEachRow != 0) {
        numberOfBombsAround++;
      }

      // check if there is a bomb around on the bottom right
      if (bombLocation.contains(i + numberInEachRow + 1) &&
          i < numberOfSquares - numberInEachRow &&
          i % numberInEachRow != numberInEachRow - 1) {
        numberOfBombsAround++;
      }

      // set the number of bombs around
      squareStatus[i][0] = numberOfBombsAround;
    }
  }

  void gameOver() {
    setState(() {
      bombRevealed = true;
    });

    for (int i = 0; i < numberOfSquares; i++) {
      if (bombLocation.contains(i)) {
        squareStatus[i][1] = true;
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Game Over",
              style: theme.textTheme.headline5,
            ),
            content: Text(
              "Don't give up, try again!",
              style: theme.textTheme.bodyText2,
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: SetColor.tertiary,
                  textStyle: theme.textTheme.button!.copyWith(
                    color: SetColor.white,
                  ),
                ),
                child: const Text("Play Again"),
                onPressed: () {
                  Navigator.of(context).pop();
                  restartGame();
                },
              )
            ],
          );
        });
  }

  void winTheGame() {
    setState(() {
      bombRevealed = true;
      won++;
    });

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Congratulations!",
              style: theme.textTheme.headline5,
            ),
            content: Text(
              "Awesome! You completed the game!",
              style: theme.textTheme.bodyText2,
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: SetColor.tertiary,
                  textStyle: theme.textTheme.button!.copyWith(
                    color: SetColor.white,
                  ),
                ),
                child: const Text("Play Again"),
                onPressed: () {
                  Navigator.of(context).pop();
                  restartGame();
                },
              )
            ],
          );
        });
  }

  void checkWinner() {
    int unrevealedBoxes = 0;
    for (int i = 0; i < numberOfSquares; i++) {
      if (squareStatus[i][1] == false) {
        unrevealedBoxes++;
      }
    }

    if (unrevealedBoxes == bombLocation.length) {
      winTheGame();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: SetMainAxisAlign.spaceBetween,
      crossAxisAlignment: SetCrossAxisAlign.center,
      children: [
        // TODO : add a game stat
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: SetColor.tertiary,
          ),
          child: Row(
            mainAxisAlignment: SetMainAxisAlign.spaceEvenly,
            crossAxisAlignment: SetCrossAxisAlign.center,
            children: [
              Column(
                mainAxisAlignment: SetMainAxisAlign.center,
                children: [
                  Text(
                    bombLocation.length.toString(),
                    style: theme.textTheme.headline5!.copyWith(
                      color: SetColor.primary,
                      fontSize: SetFontSize.lg / 1.5,
                      fontWeight: SetFontWeight.medium,
                    ),
                  ),
                  Text(
                    'bombs'.toUpperCase(),
                    style: theme.textTheme.bodyText1!.copyWith(
                      color: SetColor.secondary,
                      letterSpacing: SetLetterSpacing.positive * 2.0,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh_outlined,
                  size: SetSize.md,
                  color: SetColor.primary,
                ),
                onPressed: () {
                  restartGame();
                },
              ),
              // TODO : add total win game
              Column(
                mainAxisAlignment: SetMainAxisAlign.center,
                children: [
                  Text(
                    won.toString(),
                    style: theme.textTheme.headline5!.copyWith(
                      color: SetColor.primary,
                      fontSize: SetFontSize.lg / 1.5,
                      fontWeight: SetFontWeight.medium,
                    ),
                  ),
                  Text(
                    'Won'.toUpperCase(),
                    style: theme.textTheme.bodyText1!.copyWith(
                      color: SetColor.secondary,
                      letterSpacing: SetLetterSpacing.positive * 2.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: SetPadding.all['sm'],
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: numberInEachRow,
              ),
              itemCount: numberOfSquares,
              itemBuilder: (BuildContext context, int index) {
                if (bombLocation.contains(index)) {
                  return MobileHomeBombs(
                    revealed: bombRevealed,
                    function: () {
                      // user tapped the bomb
                      gameOver();
                    },
                  );
                } else {
                  return MobileHomeBoxes(
                    child: squareStatus[index][0],
                    revealed: squareStatus[index][1]!,
                    function: () {
                      // reveal the square
                      revealedSquares(index);
                      checkWinner();
                    },
                  );
                }
              },
            ),
          ),
        ),

        Padding(
          padding: SetPadding.bottom['sm'],
          child: Text(
            'Made with \u2665 by THIO ALLI',
            style: theme.textTheme.bodyText2!.copyWith(
              fontSize: SetFontSize.sm / 1.5,
              fontWeight: SetFontWeight.light,
            ),
          ),
        )
      ],
    );
  }
}
