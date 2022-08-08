// ignore_for_file: unnecessary_const, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:b_nutri/modules/home/optionmenu.dart';
import 'package:b_nutri/modules/list/list_page.dart';
import 'package:b_nutri/modules/listas/alimentosList.dart';
import 'package:b_nutri/modules/listas/principios.dart';
import 'package:b_nutri/modules/listas/vegetarianaslist.dart';
import 'package:b_nutri/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import '../listas/leiteList.dart';
import '../listas/passosList.dart';

class HomePage extends StatefulWidget {
  final UserModel user;

  const HomePage({Key? key, required this.user}) : super(key: key);

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
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: ListTile(
                  title: Text.rich(
                    TextSpan(
                      text: "Olá, mamãe ",
                      children: [
                        TextSpan(text: "${widget.user.name}"),
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
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(widget.user.photoURL!),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 25),
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Option(
                    nomeOption: 'Princípios',
                    imgOption: ('assets/imgs/p.png'),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPage(
                                listcard: principioslist,
                                titulo: 'Princípios da alimentação saudável')),
                      );
                    },
                  ),
                  Option(
                    nomeOption: "Leite Materno",
                    imgOption: ('assets/imgs/l.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist,
                                  titulo: 'Leite Materno')));
                    },
                  ),
                  Option(
                    nomeOption: "12 Passos",
                    imgOption: ('assets/imgs/12.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: passoslist,
                                  titulo:
                                      '12 passos para alimentação saudável')));
                    },
                  ),
                  Option(
                    nomeOption: "Alimentos",
                    imgOption: ('assets/imgs/a.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: alimentolist,
                                  titulo: 'Conhecendo os Alimentos')));
                    },
                  ),
                  Option(
                    nomeOption: "Vegetarianas",
                    imgOption: ('assets/imgs/v.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: vegetarianalist,
                                  titulo: 'Crianças Vegetarianas')));
                    },
                  ),
                  Option(
                    nomeOption: "Utensílios",
                    imgOption: ('assets/imgs/u.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Utensílios')));
                    },
                  ),
                  Option(
                    nomeOption: "Perguntas",
                    imgOption: ('assets/imgs/q.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Utensílios')));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 10,
            ),
          ],
        ),
      ),
    );
  }
}
