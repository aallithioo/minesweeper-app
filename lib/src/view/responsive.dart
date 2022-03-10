import 'package:flutter/material.dart';

import '../app/theme/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SetScreenScope.mobile['potrait']) {
          return mobile;
        } else if (constraints.maxWidth < SetScreenScope.tablet['potrait']) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
