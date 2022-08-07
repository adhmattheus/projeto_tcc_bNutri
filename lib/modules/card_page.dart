// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:b_nutri/modules/info/info_page.dart';
import 'package:flutter/material.dart';
import '../modules/list/card_list.dart';

class CardPage extends StatelessWidget {
  final CardItem card;

  const CardPage({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => InfoPage(card: card)));
      },
      child: Container(
        height: 120,
        margin: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 15,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 124,
              margin: EdgeInsets.only(left: 46),
              decoration: BoxDecoration(
                color: Color.fromARGB(110, 33, 149, 243),
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
              child: Container(
                margin: EdgeInsets.fromLTRB(55.0, 10.0, 16.0, 16.0),
                constraints: BoxConstraints.expand(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 4.0,
                    ),
                    Text(
                      card.titulo,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(height: 10.0),
                    Text(
                      card.info,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 92,
              width: 92,
              margin: EdgeInsets.symmetric(vertical: 15.0),
              alignment: FractionalOffset.centerLeft,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(card.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
