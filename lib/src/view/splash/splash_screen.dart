import 'package:flutter/material.dart';

import '../../app/themes/font_size.dart';
import '../../app/themes/font_weight.dart';
import '../../app/themes/theme.dart';

part './widgets/splash_body.dart';
part './widgets/splash_content.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  _SplashScreeenState createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
