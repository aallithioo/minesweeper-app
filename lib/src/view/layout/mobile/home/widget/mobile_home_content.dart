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
      children: [
        // TODO : add a game stat

        // TODO : add grid

        // TODO : add brand
        Text(
          '© 2022, Thio Alli',
          style: theme.textTheme.bodyText1!,
        )
      ],
    );
  }
}
