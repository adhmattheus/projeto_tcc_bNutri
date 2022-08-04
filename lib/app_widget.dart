// ignore_for_file: prefer_const_constructors

import 'package:b_nutri/modules/info/info_page.dart';
import 'package:b_nutri/modules/login/login_page.dart';
import 'package:b_nutri/modules/splash/splash_page.dart';
import 'package:b_nutri/modules/wrapper.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B Nutri',
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => Wrapper(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
