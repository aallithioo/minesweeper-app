import 'package:flutter/material.dart';
import 'package:minesweeper/src/app/theme/color.dart';
import 'package:minesweeper/src/app/theme/font_weight.dart';
import 'package:minesweeper/src/app/widget/border.dart';
import 'package:minesweeper/src/app/widget/cross_axis_alignment.dart';
import 'package:minesweeper/src/app/widget/main_axis_alignment.dart';

import '../../../../app/theme/theme.dart';

part './widget/mobile_home_body.dart';
part './widget/mobile_home_content.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MobileHomeBody(),
    );
  }
}
