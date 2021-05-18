

import 'package:flutter/material.dart';
import 'package:tripss_app/widgets/section_title.dart';

import '../../card_img_list.dart';
import '../../header_appbar.dart';

class HomeScreen extends StatelessWidget {
    String descriptionDummy = "Lorem";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            SizedBox(height: 250.0,),
            SectionTitle(title: 'Museos',),
              CardImgList(),
              
              SectionTitle(title: 'Arquitectura',),
              CardImgList(),

              SectionTitle(title: 'Naturaleza',),
              CardImgList(),

          ],
        ),
        HeaderAppBar()
      ],
    );

    // return Scaffold(
    //   body: SingleChildScrollView(
    //       child: Column(
    //         children: <Widget>[
    //           SizedBox(height: 100.0,),
    //           SectionTitle(title: 'Pimentel',),
    //           CardImgList(),
              
    //           SectionTitle(title: 'Pimentel',),
    //           CardImgList(),

    //           SectionTitle(title: 'Pimentel',),
    //           CardImgList(),
    //           // DescriptionPlace("Pimentel", 4, descriptionDummy),
    //           // ReviewList()

    //         ],
    //       ),
    //     ),
    // );
  }
}