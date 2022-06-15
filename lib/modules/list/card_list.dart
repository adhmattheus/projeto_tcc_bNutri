import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 124,
            margin: EdgeInsets.only(left: 46),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            alignment: FractionalOffset.centerLeft,
            child: Image(
              image: AssetImage("assets/imgs/earth.png"),
              height: 92,
              width: 92,
            ),
          ),
        ],
      ),
    );
  }
}
