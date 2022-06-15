// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/imgs/home.png'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 120,
          margin: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 124,
                margin: EdgeInsets.only(left: 46),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
              Container(
                height: 92,
                width: 92,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                alignment: FractionalOffset.centerLeft,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/imgs/baby.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
