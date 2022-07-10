// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:b_nutri/modules/card_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "12 Passos para uma alimentação saudável",
            style: TextStyle(fontSize: 20),
          ),
        ),
        leading: BackButton(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration  : const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/home.png'), fit: BoxFit.cover),
        ),
        child: ListView(children: [
          CardPage(),
          CardPage(),
          CardPage(),
          CardPage(),
          CardPage(),
          CardPage(),
          CardPage(),
          CardPage(),
        ]),
      ),
    );
  }
}
