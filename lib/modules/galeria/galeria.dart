import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Galeria'),
        ),
        body: Center(
          child: Text("galeria"),
        ));
  }
}
