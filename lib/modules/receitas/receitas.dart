// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:b_nutri/modules/card_page.dart';
import 'package:b_nutri/modules/list/card_list.dart';
import 'package:flutter/material.dart';

class Receitas extends StatelessWidget {
  final List<CardItem> listcard;

  final String titulo;

  const Receitas({Key? key, required this.listcard, required this.titulo})
      : super(key: key);

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
            text: titulo,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/extra.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) =>
                      CardPage(card: listcard[index]),
                  itemCount: listcard.length,
                  padding: EdgeInsets.symmetric(vertical: 16.0)),
            ),
          ],
        ),
      ),
    );
  }
}
