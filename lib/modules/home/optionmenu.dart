// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String nomeOption;
  final String imgOption;
  final Function() press;

  const Option(
      {Key? key,
      required this.nomeOption,
      required this.imgOption,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
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
          ),
        ),
      ),
    );
  }
}
