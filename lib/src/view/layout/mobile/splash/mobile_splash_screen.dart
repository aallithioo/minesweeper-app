import 'package:flutter/material.dart';

import '../../../../app/theme/color.dart';
import '../../../../app/theme/size.dart';
import '../../../../app/theme/theme.dart';
import '../../../../app/widget/border.dart';
import '../../../../app/widget/cross_axis_alignment.dart';
import '../../../../app/widget/main_axis_alignment.dart';
import '../../../../app/widget/sizebox.dart';

part './widget/mobile_splash_content.dart';
part 'widget/mobile_splash_body.dart';

class MobileSplashScreen extends StatelessWidget {
  const MobileSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MobileSplashBody(),
    );
  }
}
