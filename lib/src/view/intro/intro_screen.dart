import 'package:flutter/material.dart';
import 'package:nyaru/src/app/widgets/padding.dart';

part './widgets/intro_body.dart';
part './widgets/intro_content.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroBody(),
    );
  }
}
