import 'package:b_nutri/shared/auth/auth_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/imgs/home.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/imgs/babypicture.png'),
            ),
          ],
        ),
      ),
    );
  }
}
