// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:b_nutri/modules/login/login_controller.dart';
import 'package:b_nutri/modules/login/social_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/login.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/imgs/babypicture.png',
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SocialLoginButton(
                onTap: () {
                  controller.googleSignIn(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
