import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/home/PlanetRow.dart';
import 'package:flutter_planets/models/Planet.dart';

class HomePageBody extends StatelessWidget {

  final Planet planet;

  HomePageBody(this.planet);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new PlanetRow(this.planet);
    }
}