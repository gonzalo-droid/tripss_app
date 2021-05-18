import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Top";
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
          gradient: LinearGradient( //forma del graidiente
              colors: [
                Color(0xFF4268D3), // mas claro
                Color(0xFF584CD1) //mas oscuro
              ],
              begin: FractionalOffset(0.2, 0.0), //translapacion de colores
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp // color de relleno si el gradiente falla
          )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}