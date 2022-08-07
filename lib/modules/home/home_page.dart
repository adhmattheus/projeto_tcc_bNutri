// ignore_for_file: unnecessary_const, prefer_const_constructors, sized_box_for_whitespace

import 'package:b_nutri/modules/home/optionmenu.dart';
import 'package:b_nutri/modules/list/list_page.dart';
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
                    imgOption: ('assets/imgs/earth.png'),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPage(
                                listcard: passoslist, titulo: 'Princípios')),
                      );
                    },
                  ),
                  Option(
                    nomeOption: "Leite Materno",
                    imgOption: ('assets/imgs/baby.jpg'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Leite')));
                    },
                  ),
                  Option(
                    nomeOption: "12 Passos",
                    imgOption: ('assets/imgs/baby.jpg'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Leite')));
                    },
                  ),
                  Option(
                    nomeOption: "Leite Materno",
                    imgOption: ('assets/imgs/baby.jpg'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Leite')));
                    },
                  ),
                  Option(
                    nomeOption: "Leite Materno",
                    imgOption: ('assets/imgs/mercury.png'),
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListPage(
                                  listcard: leitelist, titulo: 'Leite')));
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
