part of '../mobile_home_screen.dart';

class MobileHomeContent extends StatefulWidget {
  const MobileHomeContent({Key? key}) : super(key: key);

  @override
  State<MobileHomeContent> createState() => _MobileHomeContentState();
}

class _MobileHomeContentState extends State<MobileHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: SetMainAxisAlign.spaceBetween,
      children: [
        // TODO : add a game stat
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: SetColor.light['blue'],
            borderRadius: SetBorder.bottom['sm'],
          ),
          child: Row(
            mainAxisAlignment: SetMainAxisAlign.center,
            crossAxisAlignment: SetCrossAxisAlign.center,
            children: [
              // TODO : add total bomb
              Container(),
              // TODO : add restart game
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {},
              ),
              // TODO : add total win game
              Container(),
            ],
          ),
        ),

        // TODO : add grid

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
