part of '../mobile_home_screen.dart';

class MobileHomeContent extends StatefulWidget {
  const MobileHomeContent({Key? key}) : super(key: key);

  @override
  State<MobileHomeContent> createState() => _MobileHomeContentState();
}

class _MobileHomeContentState extends State<MobileHomeContent> {
  int numberOfSquares = 10 * 10;
  int numberInEachRow = 10;

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
                    '06',
                    style: theme.textTheme.headline5!.copyWith(
                      color: SetColor.primary,
                      fontSize: SetFontSize.lg / 1.5,
                      fontWeight: SetFontWeight.light,
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
                      fontWeight: SetFontWeight.light,
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

        // TODO : add grid
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
                return Padding(
                  padding: SetPadding.all['xs'] / 4.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: SetColor.tertiary.withOpacity(0.3),
                      borderRadius: SetBorder.all['xs'] / 2.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        // TODO : add brand
        Text(
          'Made by THIO ALLI',
          style: theme.textTheme.bodyText2!.copyWith(
            fontSize: SetFontSize.sm / 1.5,
            fontWeight: SetFontWeight.light,
          ),
        )
      ],
    );
  }
}
