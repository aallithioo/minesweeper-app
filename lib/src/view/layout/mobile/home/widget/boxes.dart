part of '../mobile_home_screen.dart';

class MobileHomeBoxes extends StatelessWidget {
  const MobileHomeBoxes({Key? key, this.child}) : super(key: key);

  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SetPadding.all['xs'] / 4.0,
      child: Container(
        decoration: BoxDecoration(
          color: SetColor.tertiary.withOpacity(0.3),
          borderRadius: SetBorder.all['xs'] / 2.0,
        ),
        child: Center(
          child: Text(
            child.toString(),
            style: theme.textTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}
