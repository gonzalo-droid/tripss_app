import 'package:flutter/material.dart';

import '../../../circle_button.dart';

class ButtonsbarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            CircleButton(false, Icons.food_bank, 30.0, Color.fromRGBO(255, 255, 255, 1)),
            
            CircleButton(false, Icons.family_restroom, 30.0, Color.fromRGBO(255, 255, 255, 1)),
            
            CircleButton(false, Icons.wifi, 30.0, Color.fromRGBO(255, 255, 255, 1)),
            
            CircleButton(false, Icons.photo_camera, 30.0, Color.fromRGBO(255, 255, 255, 1)),
            
            // CircleButton(false, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 1))
          ],
        )
    );
  }
}