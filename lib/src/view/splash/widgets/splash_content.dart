part of '../splash_screen.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'nyaru',
      style: kThioAlli.textTheme.headline6!.copyWith(
        color: kThioAlli.textTheme.headline6!.color,
        fontSize: SetFontSize.medium,
        fontWeight: SetFontWeight.bold,
      ),
    );
  }
}
