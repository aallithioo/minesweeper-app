part of '../mobile_home_screen.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MobileHomeContent(),
    );
  }
}
