import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tripss_app/screen/home/home_screen.dart';
import 'package:tripss_app/screen/list_item/list_item_screen.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: PlatziTripsCupertino(),

      initialRoute: 'home_screen',
      routes: {
        'home_screen': (BuildContext context) => HomeScreen(),
      },



    );
  }
}
