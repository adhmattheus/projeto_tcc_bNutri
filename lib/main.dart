// ignore_for_file: prefer_const_constructors

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
      home: Receitas(),
    );
  }
}