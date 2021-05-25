import 'package:flutter/material.dart';
import 'package:tripss_app/widgets/bottom_navbar.dart';
import 'package:tripss_app/widgets/section_title.dart';

import '../../card_img_list.dart';
import '../../gradient_back.dart';
import '../../header_appbar.dart';

class HomeScreen extends StatelessWidget {
  String descriptionDummy = "Lorem";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double c_width = MediaQuery.of(context).size.width;
    double c_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(
                height: 200.0,
              ),
              SectionTitle(
                title: 'Chiclayo',
              ),
              CardImgList("chiclayo"),
              
              SizedBox(
                height: 30.0,
              ),
              SectionTitle(
                title: 'Lambayeque',
              ),
              CardImgList("lambayeque"),
              
              
              SizedBox(
                height: 30.0,
              ),
              SectionTitle(
                title: 'Tucume',
              ),
              CardImgList("tucume"),

              SizedBox(
                height: 30.0,
              ),
              SectionTitle(
                title: 'Pimentel',
              ),
              CardImgList("pimentel"),
            ],
          ),
          HeaderAppBar()
        ],
      ),
      bottomNavigationBar: CoustomBottomNavBar(),
    );

    // return Scaffold(
    //   // appBar: ,
    //   body: SafeArea(
    //       child: Container(
    //         height: c_height,
    //         child: Column(
    //           children: [
    //             GradientBack("PeruTrips"),
    //             Container(
    //               // margin: EdgeInsets.only(top: 100.0),
    //               width: c_width,
    //               decoration: BoxDecoration(
    //                 color: Colors.pink,
    //                 // borderRadius: BorderRadius.circular(10)
    //               ),
    //               child: TextField(
    //                 onChanged: (value) => print(value),
    //                 decoration: InputDecoration(
    //                     contentPadding:
    //                         EdgeInsets.symmetric(horizontal: 20, vertical: 9),
    //                     border: InputBorder.none,
    //                     focusedBorder: InputBorder.none,
    //                     enabledBorder: InputBorder.none,
    //                     hintText: "Busca tu próxima aventura",
    //                     prefixIcon: Icon(Icons.search)),
    //               ),
    //             ),
    //             // ListView(
    //             //   children: <Widget>[
    //             //     SizedBox(
    //             //       height: 250.0,
    //             //     ),
    //             //     SectionTitle(
    //             //       title: 'Museos',
    //             //     ),
    //             //     CardImgList(),
    //             //     SectionTitle(
    //             //       title: 'Arquitectura',
    //             //     ),
    //             //     CardImgList(),
    //             //     SectionTitle(
    //             //       title: 'Naturaleza',
    //             //     ),
    //             //     CardImgList(),
    //             //   ],
    //             // ),
    //           ],
    //         ),
    //       )),
    //   bottomNavigationBar: CoustomBottomNavBar(),
    // );

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
