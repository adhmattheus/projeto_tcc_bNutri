import 'package:b_nutri/modules/home/home_page.dart';
import 'package:b_nutri/modules/list/list_page.dart';
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
      home: ListPage(),
    );
  }
}
