// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Galeria extends StatefulWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  State<Galeria> createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
  final List<String> titles = [
    "RED",
    "YELLOW",
    "CYAN",
    "BLUE",
    "GREY",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/mars.png'),),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Galeria',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Container(
        // padding: EdgeInsets.only(top: 80),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/home.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
