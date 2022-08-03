import 'package:b_nutri/modules/galeria/galeria.dart';
import 'package:b_nutri/modules/home/home_page.dart';
import 'package:b_nutri/modules/receitas/receitas.dart';
import 'package:b_nutri/shared/models/user_model.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  Wrapper();

  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 1;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      Receitas(),
      HomePage(
        user: ModalRoute.of(context)!.settings.arguments as UserModel,
      ),
      Galeria(),
    ];

    return Scaffold(
      body: _children[_currentIndex],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 48,
        onTap: onTabTapped,
        index: _currentIndex,
        items: [
          Icon(Icons.food_bank),
          Icon(Icons.home),
          Icon(Icons.photo_library),
        ],
      ),
    );
  }
}
