import 'package:flutter/material.dart';
import 'card_img.dart';
import 'package:tripss_app/util/constant.dart';

class CardImgList extends StatelessWidget {


  String type = "chiclayo";
  CardImgList(this.type);

  List<Map<String, Object>> list = chiclayo;

  @override
  Widget build(BuildContext context) {

    if(this.type == "chiclayo"){
      list =  chiclayo;
    }else{
      list =  tucume;
    }


    // TODO: implement build
    return Container(
      // color: Colors.pink,
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: this.list.length,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          itemBuilder: (context, index) {
            // for (int i =0; i <4 ;i++) {
            return CardImg(this.list[index]);
            // }
          }),
    );
  }
}
