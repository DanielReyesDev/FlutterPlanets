import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/home/PlanetRow.dart';
import 'package:flutter_planets/models/Planet.dart';

class HomePageBody extends StatelessWidget {

  final Planet planet;

  HomePageBody(this.planet);

  @override
    Widget build(BuildContext context) {
      return new Expanded(
        child: new Container(
          color: new Color(0xFF736AB7),
          child: new CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              new SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                sliver: new SliverFixedExtentList(
                  itemExtent: 152.0,
                  delegate: new SliverChildBuilderDelegate(
                    (context, index) => new PlanetRow(planets[index]),
                    childCount: planets.length
                  ),
                ),
              )
            ],
          ),
        ),
      );
      // return new Expanded(
      //     child: ListView.builder(
      //     itemBuilder: (context, index) => new PlanetRow(planets[index]),
      //     itemCount: planets.length,
      //     padding: new EdgeInsets.symmetric(vertical: 16.0),
      //   ),
      // );
    }
}