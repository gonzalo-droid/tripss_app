import 'package:flutter/material.dart';
import 'package:tripss_app/screen/list_item/list_item_screen.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        // mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.title,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 20.0,
                fontWeight: FontWeight.w900),
            // style: TextStyle(
            //   fontSize: 20,
            //   // fontSize: getProportionateScreenWidth(18),
            //   color: Colors.black,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ListItemScreen())),
            child: Text(
              "Ver más",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
