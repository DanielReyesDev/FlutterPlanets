import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/home/GradientAppBar.dart';
import 'package:flutter_planets/ui/home/HomePageBody.dart';
import 'package:flutter_planets/models/Planet.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Treva"),
          new HomePageBody(planets[0]),
        ],
      )
    );
  }
}