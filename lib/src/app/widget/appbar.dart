import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../theme/theme.dart';

AppBar appbar({required String title}) {
  return AppBar(
    title: Text(title, style: theme.textTheme.headline5!),
    centerTitle: false,
    backgroundColor: SetColor.transparent,
    shadowColor: SetColor.transparent,
    foregroundColor: theme.textTheme.headline5!.color,
    automaticallyImplyLeading: false,
    elevation: 0,
  );
}
