import 'package:flutter/material.dart';
import 'package:tripss_app/screen/item/item_screen.dart';
import 'package:tripss_app/util/constant.dart';
import 'floating_action_button_green.dart';

class CardImg extends StatelessWidget {
  final Map<String, Object> item ;
  final int index = 0;

  CardImg(this.item,);

  

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 300.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 5.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(item['imgUrl'])),
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
          ),
          

          Container(
        // padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          // color: Color(0xFF4268D3),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: ElevatedButton(
          child:
              Container(padding: EdgeInsets.all(5.0), child: Text(item['title'])),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF4268D3),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color:  Color(0xFF4268D3))
                ),
          ),
          onPressed: (){},
          
        ),
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
