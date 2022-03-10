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
        child: revealed
            ? Padding(
                padding: SetPadding.all['xs'] / 2.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: revealed
                        ? child == 1
                            ? SetColor.light['blue']
                            : child == 2
                                ? SetColor.light['green']
                                : child >= 3
                                    ? SetColor.light['yellow']
                                    : SetColor.light['grey']
                        : SetColor.light['grey'].withOpacity(0.5),
                    borderRadius: SetBorder.all['lg'],
                  ),
                  child: Center(
                    child: Text(
                      revealed && child >= 1 ? child.toString() : '',
                      style: theme.textTheme.bodyText2!.copyWith(
                        color: child == 1 ? SetColor.black : SetColor.black,
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  color: SetColor.black.withOpacity(0.2),
                  borderRadius: SetBorder.all['xs'] / 3.0,
                ),
              ),
      ),
    );
  }
}
