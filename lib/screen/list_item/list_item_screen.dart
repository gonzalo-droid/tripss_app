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
                    "Los Mejores lugares en",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    maxLines: 2,
                  ),
                  subtitle: Text(
                    "Chiclayo",
                    style: TextStyle(
                        fontSize: 50,
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
