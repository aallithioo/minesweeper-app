part of '../desktop_splash_screen.dart';

class DesktopSplashContent extends StatefulWidget {
  const DesktopSplashContent({Key? key}) : super(key: key);

  @override
  State<DesktopSplashContent> createState() => _DesktopSplashContentState();
}

class _DesktopSplashContentState extends State<DesktopSplashContent> {
  double _width = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        double _newWidth = SetSize.xl;
        _width = _newWidth;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: SetMainAxisAlign.center,
      crossAxisAlignment: SetCrossAxisAlign.center,
      children: [
        Text(
          'type-here',
          style: theme.textTheme.headline5,
        ),
        SetSizeBox.vertical['xs'],
        Stack(
          children: [
            Container(
              height: SetSize.xs,
              width: SetSize.xl,
              decoration: BoxDecoration(
                color: SetColor.secondary,
                borderRadius: SetBorder.all['xl'],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 750),
              height: SetSize.xs,
              width: _width,
              curve: Curves.linear,
              decoration: BoxDecoration(
                color: SetColor.tertiary,
                borderRadius: SetBorder.all['xl'],
              ),
            ),
          ],
        ),
      ],
    );
  }
}