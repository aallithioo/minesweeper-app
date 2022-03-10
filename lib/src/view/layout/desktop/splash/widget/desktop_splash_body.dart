part of '../desktop_splash_screen.dart';

class DesktopSplashBody extends StatelessWidget {
  const DesktopSplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: DesktopSplashContent(),
      ),
    );
  }
}
