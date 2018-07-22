import 'package:flutter/material.dart';
import 'package:flutter_planets/models/Planet.dart';

class PlanetRow extends StatelessWidget {

  final Planet planet;

  PlanetRow(this.planet);

  

  

  @override
    Widget build(BuildContext context) {

      final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
      );
      
      final headerTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 18.0,
        fontWeight: FontWeight.w600
      ); 

      final planetThumbnail = new Container(
        margin: new EdgeInsets.symmetric(
          vertical: 16.0
        ),
        alignment: FractionalOffset.centerLeft,
        child: new Image(
          image: new AssetImage(this.planet.image),
          height: 92.0,
          width: 92.0,
        ),
      );


      final planetCard = new Container(
        height: 124.0,
        margin: EdgeInsets.only(
          left: 46.0
        ),
        decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            )
          ],
        ),
      );

      
      // TODO: implement build
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
           children: <Widget>[
             planetCard,
             planetThumbnail,
           ],
        ),
      );
    }
}