import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),

      ),

    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),

      ),

    );

    final star = Container (
      margin: EdgeInsets.only(
          left: 4.0,
          right: 4.0,
          bottom: 20.0,
      ),

      child: Icon(
        Icons.star,

        color:  Color(0xFFf2C611),
      ),
        height: 8.0,
        width: 8.0,
    );


    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0
        ),

      ),

    );

    final userInfoFull = Row(
      children: <Widget>[
        userInfo,
        star,
        star,
        star,
        star,
        star,
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //alineacion a left
      children: <Widget>[
        userName,
        userInfoFull,
        userComment

      ],
    );

    final photo = Container (
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),

    );

    return Row (
      children: <Widget>[
        photo,
        userDetails
      ],
    );

  }

}