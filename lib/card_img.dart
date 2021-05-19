import 'package:flutter/material.dart';
import 'package:tripss_app/screen/item/item_screen.dart';
import 'floating_action_button_green.dart';

class CardImg extends StatelessWidget {
  String pathImage = "assets/img/place4.jpeg";

  CardImg(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 300.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 5.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1), //x,y
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ItemScreen()
                    )
                  ),
          child:card,
          )
        

        // FloatingActionButton(
        //   heroTag: "home_screem",
        //   backgroundColor: Color(0xFF11DA53),
        //   mini: true, //tamaño del elemento valor mini default false
        //   tooltip: "Fav",
        //   onPressed: () {},
        //   child: Icon(
        //       // this._pressed  ? Icons.favorite:
        //       Icons.favorite_border),
        // )
        
        // FloatingActionButtonGreen()
      ],
    );
  }
}
