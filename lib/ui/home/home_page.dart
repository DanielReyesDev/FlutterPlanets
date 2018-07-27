import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/common/gradient_app_bar.dart';
import 'package:flutter_planets/ui/home/home_page_body.dart';
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