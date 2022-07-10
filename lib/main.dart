// ignore_for_file: prefer_const_constructors

import 'package:b_nutri/modules/card_page.dart';
import 'package:b_nutri/modules/galeria/galeria.dart';
import 'package:b_nutri/modules/home/home_page.dart';
import 'package:b_nutri/modules/info/info_page.dart';
import 'package:b_nutri/modules/list/list_page.dart';
import 'package:b_nutri/modules/receitas/receitas.dart';
import 'package:b_nutri/modules/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B Nutri',
      home: Wrapper(),
    );
  }
}
