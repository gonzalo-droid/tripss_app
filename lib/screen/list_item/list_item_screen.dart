import 'package:flutter/material.dart';
import 'package:tripss_app/widgets/bottom_navbar.dart';

import '../../profile_background.dart';
import '../../profile_header.dart';
import '../../profile_places_list.dart';

class ListItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[
              // ProfileHeader(),
              AppBar(
                title: ListTile(
                    title: Text(
                      "Los Mejores Museos",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      maxLines: 2,
                    ),
                    ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                toolbarHeight: 200.0,
              ),
              ProfilePlacesList()
            ],
          ),
        ],
      ),

      bottomNavigationBar: CoustomBottomNavBar(),
    );
  }
}
