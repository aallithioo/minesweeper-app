import 'package:flutter/material.dart';

import '../../../../app/theme/color.dart';
import '../../../../app/theme/size.dart';
import '../../../../app/theme/theme.dart';
import '../../../../app/widget/border.dart';
import '../../../../app/widget/cross_axis_alignment.dart';
import '../../../../app/widget/main_axis_alignment.dart';
import '../../../../app/widget/sizebox.dart';

part './widget/desktop_splash_body.dart';
part './widget/desktop_splash_content.dart';

class DesktopSplashScreen extends StatelessWidget {
  const DesktopSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DesktopSplashBody(),
    );
  }
}
