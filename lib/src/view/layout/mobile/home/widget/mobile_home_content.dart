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
  int minBombLocation = 0;
  int maxBombLocation = 150;
  Random random = Random();

  // TODO : add random bomb location
  List<int> bombLocation = [];

  // var bombLocation =
  //     new List<int>.generate(10, (int index) => index); // [0, 1, 4]
  // int randomBombLocation() {
  //   int bombLocation = random.nextInt(numberOfSquares);
  //   if (bombLocation >= minBombLocation && bombLocation <= maxBombLocation) {
  //     return randomBombLocation();
  //   }
  //   return bombLocation;
  // }

  // final List<int> bombLocation = [
  //   80,
  //   12,
  //   4,
  //   100,
  //   141,
  //   66,
  //   96,
  //   127,
  // ];

  // bomb revealed
  bool bombRevealed = false;

  @override
  void initState() {
    super.initState();

    while (bombLocation.length <
        ((random.nextInt(maxBombLocation) + 1) *
                (random.nextInt(maxBombLocation) + 2)) /
            numberInEachRow) {
      bombLocation.add(Random().nextInt(maxBombLocation) + 0);
    }

    // initialy, each square has 0 bomb around, and is not revealed
    for (int i = 0; i < numberOfSquares; i++) {
      squareStatus.add([0, false]);
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
            color: SetColor.tertiary.withOpacity(0.7),
          ),
          child: Row(
            mainAxisAlignment: SetMainAxisAlign.spaceEvenly,
            crossAxisAlignment: SetCrossAxisAlign.center,
            children: [
              // TODO : add total bomb
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
              // TODO : add restart game
              IconButton(
                icon: Icon(
                  Icons.refresh_outlined,
                  size: SetSize.md,
                  color: SetColor.primary,
                ),
                onPressed: () {},
              ),
              // TODO : add total win game
              Column(
                mainAxisAlignment: SetMainAxisAlign.center,
                children: [
                  Text(
                    '00',
                    style: theme.textTheme.headline5!.copyWith(
                      color: SetColor.primary,
                      fontSize: SetFontSize.lg / 1.5,
                      fontWeight: SetFontWeight.medium,
                    ),
                  ),
                  Text(
                    'Win'.toUpperCase(),
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
                      setState(() {
                        bombRevealed = true;
                      });
                    },
                  );
                } else {
                  return MobileHomeBoxes(
                    child: squareStatus[index][0],
                    revealed: squareStatus[index][1]!,
                    function: () {
                      // reveal the square
                      revealedSquares(index);
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
