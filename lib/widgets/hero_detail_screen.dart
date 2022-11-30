import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/const_styles.dart';

import '../list_of_heroes.dart';

class HeroDetailed extends StatelessWidget {
  final HeroData data;

  const HeroDetailed({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        shadows: shadows);
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(children: <Widget>[
          Positioned.fill(
              child: Image.network(
            data.image,
                fit: BoxFit.cover,
          )),
          Align(alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      children: <Widget>[
                        Text(data.description, style: textStyle)
                      ],
                    ),
                  ))),
          Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(color: Colors.white, onPressed:() => Navigator.pop(context),)))
        ]));
  }
}
