import 'package:flutter/material.dart';
import 'package:minesweeper/src/app/theme/letter_spacing.dart';
import 'package:minesweeper/src/app/widget/margin.dart';
import 'package:minesweeper/src/app/widget/padding.dart';

import '../../../../app/theme/color.dart';
import '../../../../app/theme/font_size.dart';
import '../../../../app/theme/font_weight.dart';
import '../../../../app/theme/size.dart';
import '../../../../app/theme/theme.dart';
import '../../../../app/widget/border.dart';
import '../../../../app/widget/cross_axis_alignment.dart';
import '../../../../app/widget/main_axis_alignment.dart';

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
