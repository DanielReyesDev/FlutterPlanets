import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/common/planet_summary.dart';
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
            shrinkWrap: false,
            slivers: <Widget>[
              new SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                sliver: new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (context, index) => new PlanetSummary(planets[index]), //new PlanetRow(planets[index]),
                    childCount: planets.length
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
}