import 'package:flutter/material.dart';
import 'card_img.dart';

class CardImgList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.pink,
      height: 300.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImg("assets/img/place1.jpg"),
          CardImg("assets/img/place2.jpg"),
          CardImg("assets/img/place3.jpg"),
          CardImg("assets/img/place4.jpg"),
        ],
      ),
    );
  }

}