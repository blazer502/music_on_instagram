import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/theme.dart';
import 'package:test_1_0_1/screens/splash/splash_screen.dart';

import 'components/routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: BAIDetail(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}