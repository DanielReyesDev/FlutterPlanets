import 'package:flutter/material.dart';
import 'package:flutter_planets/ui/home/GradientAppBar.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Treva"),
        ],
      )
    );
  }
}