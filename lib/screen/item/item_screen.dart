import 'package:flutter/material.dart';
import 'package:tripss_app/card_img_list.dart';
import 'package:tripss_app/widgets/bottom_navbar.dart';

import '../../button_bar.dart';
import '../../description_place.dart';
import '../../profile_background.dart';
import '../../review_list.dart';
import 'components/buttonsbar_item.dart';

class ItemScreen extends StatelessWidget {
  String descriptionDummy =
      "Se encuentra adornado de jardines con bellas flores y cuyo principal atractivo es un monumento de rotondas ornamentadas con esculturas helénicas. \n\n Cuando se llega al Paseo Las Musas, se observa primero un portal que es sostenido por cuatro cariatides de aproximadamente cinco metros de altura, sobre la cual está el lema “Heroica Ciudad de Chiclayo”, un título que se le fue dado a los pobladores que defendieron los intereses patrios durante la guerra del pacífico.\n\n Cabe destacar que estas esculturas magníficas fueron creadas por el artista Celendino Miguel A. Díaz Díaz y que es el único lugar de este tipo en esta parte del Perú. ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            "Paseo las Musas",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 2,
          ),
        ),
        backgroundColor: Color(0xFF4268D3),
        elevation: 0.0,
        toolbarHeight: 100.0,
      ),

      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardImgList("chiclayo"),
              // ButtonsbarItem(),
              SizedBox(
                height: 20.0,
              ),
              DescriptionPlace("Paseo las musas", 4, descriptionDummy),
              // ProfilePlacesList()

              ReviewList(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CoustomBottomNavBar(),
    );

    // return Stack(
    //   children: <Widget>[
    //     ProfileBackground(),
    //     ListView(
    //       children: <Widget>[
    //         // ProfileHeader(),
    //         AppBar(
    //           title: ListTile(
    //               title: Text(
    //                 "Museo Señor de Sipan",
    //                 style: TextStyle(
    //                     fontSize: 30,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.white),
    //                 maxLines: 2,
    //               ),
    //               ),
    //           backgroundColor: Colors.transparent,
    //           elevation: 0.0,
    //           toolbarHeight: 200.0,
    //         ),
    //         CardImgList(),
    //         ButtonsbarItem(),
    //         SizedBox(height: 20.0,),
    //         DescriptionPlace("Pimentel", 4, descriptionDummy),
    //         // ProfilePlacesList()

    //         ReviewList(),
    //       ],
    //     ),
    //   ],
    // );

  }
}
