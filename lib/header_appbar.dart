import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_img_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Stack(
      // ordenar los elementos uno sobre otro
      children: <Widget>[
        GradientBack("PeruTrips"),

        Container(
          
          margin: EdgeInsets.only(top: 120.0),
          width:c_width,
          decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(10)
              ),
          child: TextField(
            onChanged: (value) => print(value),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Busca tu próxima aventura",
                
                prefixIcon: Icon(Icons.search)),
          ),
        )
        // CardImgList()
      ],
    );
  }
}
