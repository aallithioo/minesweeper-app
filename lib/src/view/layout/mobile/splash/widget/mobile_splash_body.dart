part of '../mobile_splash_screen.dart';

class MobileSplashBody extends StatelessWidget {
  const MobileSplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: MobileSplashContent(),
      ),
    );
  }
}
