part of '../mobile_home_screen.dart';

class MobileHomeBombs extends StatelessWidget {
  MobileHomeBombs({
    Key? key,
    required this.revealed,
    this.function,
  }) : super(key: key);

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
                ? SetColor.light['red'].withOpacity(0.7)
                : SetColor.black.withOpacity(0.2),
            borderRadius: SetBorder.all['xs'] / 3.0,
          ),
          child: revealed
              ? Center(
                  child: Text(
                    '💣',
                    style: theme.textTheme.bodyText2,
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
