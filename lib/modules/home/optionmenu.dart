import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String nomeOption;
  final String imgOption;

  const Option({Key? key, required this.nomeOption, required this.imgOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          Image.asset(imgOption),
          Spacer(),
          Text(
            nomeOption,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
