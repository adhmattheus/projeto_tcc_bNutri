import 'package:b_nutri/modules/galeria/galeria.dart';
import 'package:b_nutri/modules/home/home_page.dart';
import 'package:b_nutri/modules/receitas/receitas.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  Wrapper();

  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Receitas(),
    HomePage(),
    Galeria(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Receitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Galeria',
          )
        ],
      ),
    );
  }
}
