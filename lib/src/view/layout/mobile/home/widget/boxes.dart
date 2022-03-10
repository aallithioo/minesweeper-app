part of '../mobile_home_screen.dart';

class MobileHomeBoxes extends StatelessWidget {
  MobileHomeBoxes({
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
        padding: SetPadding.all['xs'] / 6.0,
        child: Container(
          decoration: BoxDecoration(
            color: revealed
                ? SetColor.black.withOpacity(0.4)
                : SetColor.black.withOpacity(0.2),
            borderRadius: SetBorder.all['xs'] / 3.0,
          ),
          child: Center(
            child: Text(
              revealed ? child.toString() : '',
              style: theme.textTheme.bodyText2!.copyWith(
                color: revealed == 1 ? SetColor.white : SetColor.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
