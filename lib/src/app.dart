import 'package:flutter/material.dart';

import 'app/themes/theme.dart';
import 'view/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement state management
    return MaterialApp(
      // TODO: Add theme data
      theme: kThioAlli,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreeen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
