// ignore_for_file: unnecessary_const, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Nutri'),

      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/imgs/home.png'),
                  fit: BoxFit.cover),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                10,
                (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: ListTile(
              title: Text.rich(
                TextSpan(text: "Olá, ", children: [
                  TextSpan(text: " mamãe Maria"),
                ]),
              ),
              subtitle: Text(
                "Vamos alimentar seu filho de maneira saudável!",
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.food_bank,
                  color: Colors.lightBlue,
                )),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(
                Icons.home,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.photo_library,
                  color: Colors.lightBlue,
                )),
          ],
        ),
      ),
    );
  }
}
