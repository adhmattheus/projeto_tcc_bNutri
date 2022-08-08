// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Color.fromARGB(213, 250, 250, 250),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/imgs/google.png'),
                  SizedBox(width: 10),
                  Container(
                    height: 56,
                    width: 1,
                    color: Color.fromARGB(118, 158, 158, 158),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Entrar com Google",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
