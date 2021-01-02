import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_img_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack( // ordenar los elementos uno sobre otro
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImgList()
      ],
    );
  }

}