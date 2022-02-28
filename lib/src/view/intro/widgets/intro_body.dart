part of '../intro_screen.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalLarge,
        child: IntroContent(),
      ),
    );
  }
}
