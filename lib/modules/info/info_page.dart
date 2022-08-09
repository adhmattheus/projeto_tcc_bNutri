// ignore_for_file: prefer_const_constructors

import 'package:b_nutri/modules/list/card_list.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final CardItem card;

  const InfoPage({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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
            text: widget.card.titulo,
            style: TextStyle(fontSize: 20),
          ),
        ),
        leading: BackButton(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/info.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.card.image), fit: BoxFit.cover),
              ),
              height: 100.0,
              width: 100.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Column(
                children: [
                  Container(
                    height: 2.0,
                    width: 30.0,
                    color: Color.fromARGB(255, 255, 0, 255),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),

                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
                    child: Text(
                      widget.card.texto,
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(40, 255, 255, 255),
                    ), // radius of 10
                  ),
                  // green as background color
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
