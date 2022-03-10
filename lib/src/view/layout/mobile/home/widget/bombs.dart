part of '../mobile_home_screen.dart';

class MobileHomeBombs extends StatelessWidget {
  MobileHomeBombs({
    Key? key,
    this.child,
    required this.revealed,
    this.function,
  }) : super(key: key);

  final child;
  bool revealed;
  final function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: SetPadding.all['xs'] / 4.0,
        child: Container(
          decoration: BoxDecoration(
            color: SetColor.tertiary.withOpacity(0.7),
            borderRadius: SetBorder.all['xs'] / 2.0,
          ),
          child: Center(
            child: Text(
              child.toString(),
              style: theme.textTheme.bodyText2,
            ),
          ),
        ),
      ),
    );
  }
}
