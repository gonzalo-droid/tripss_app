import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
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
    );
  }

}