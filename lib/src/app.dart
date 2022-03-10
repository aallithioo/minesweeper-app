import 'package:flutter/material.dart';

import 'app/routes/route.dart';
import 'app/theme/theme.dart';
import 'view/layout/mobile/home/mobile_home_screen.dart';
import 'view/layout/mobile/splash/mobile_splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO : implement state management
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO : change title
      title: 'minesweeper',
      theme: theme,
      initialRoute: Routes.mobile['splash'],
      routes: {
        Routes.mobile['splash']: (context) => const MobileSplashScreen(),
        Routes.mobile['home']: (context) => const MobileHomeScreen(),
      },
    );
  }
}
