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
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            "Museo Señor de Sipan",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 2,
          ),
        ),
        backgroundColor: Color(0xFF4268D3),
        elevation: 0.0,
        toolbarHeight: 150.0,
      ),

      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardImgList(),
              // ButtonsbarItem(),
              SizedBox(
                height: 20.0,
              ),
              DescriptionPlace("Pimentel", 4, descriptionDummy),
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
