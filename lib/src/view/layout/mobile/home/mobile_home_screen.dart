import 'package:flutter/material.dart';

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