import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'place.dart';

class ProfilePlacesList extends StatelessWidget {

  Place place = new Place('Museo Arqueológico Nacional Bruning', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '5');
  Place place2 = new Place('Pirámides De Túcume', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '203,575');
  Place place3 = new Place('Museo Tumbas Reales Del Señor De Sipán', 'Los restos intactos del Señor de Sipán fueron encontrados en Huaca Rajada, en Lambayeque, en el más grande hallazgo arqueológico de la historia peruana.', '', '186,575');

  Place place4 = new Place('Museo De Sitio De Túcume', 'Construido sobre las faldas del Cerro Purgatorio y rodeado de 26 pirámides que componen el Complejo Arqueológico del mismo nombre.', 'Scenery & Photography', '186,575');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/lam_museo_sipan.jpg', place3),
          
          ProfilePlace('assets/img/tuc_piramides.jpg', place2),
          ProfilePlace('assets/img/tuc_museo.jpg', place4),
          ProfilePlace('assets/img/lam_brunning.jpg', place),
          
          
        ],
      ),
    );
  }

}