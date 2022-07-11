// ignore_for_file: unnecessary_const, prefer_const_constructors, sized_box_for_whitespace
import 'package:b_nutri/modules/galeria/galeria.dart';
import 'package:b_nutri/modules/home/optionmenu.dart';
import 'package:b_nutri/modules/list/card_list.dart';
import 'package:b_nutri/modules/list/list_page.dart';
import 'package:b_nutri/modules/receitas/receitas.dart';
import 'package:flutter/material.dart';

import '../listas/leiteList.dart';
import '../listas/passosList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/imgs/home.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                child: ListTile(
                  title: Text.rich(
                    TextSpan(
                      text: "Olá, ",
                      children: [
                        TextSpan(text: " mamãe Maria"),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "Vamos alimentar seu filho(a) de maneira saudável!",
                  ),
                  trailing: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/baby.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 20),
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  Option(
                    nomeOption: "opção 1 ",
                    imgOption: ('assets/imgs/earth.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ListPage(listcard: passoslist, titulo:'12 passos')));
                    },
                  ),
                  Option(
                    nomeOption: "opção 2 ",
                    imgOption: ('assets/imgs/baby.jpg'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ListPage(listcard: leitelist, titulo:'Leite')));
                    },
                  ),
                  Option(
                    nomeOption: "opção 3 ",
                    imgOption: ('assets/imgs/mars.png'),
                    press: () {},
                  ),
                  Option(
                    nomeOption: "opção 4 ",
                    imgOption: ('assets/imgs/mercury.png'),
                    press: () {},
                  ),
                  Option(
                    nomeOption: "opção 5 ",
                    imgOption: ('assets/imgs/moon.png'),
                    press: () {},
                  ),
                  Option(
                    nomeOption: "opção 6 ",
                    imgOption: ('assets/imgs/mars.png'),
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
