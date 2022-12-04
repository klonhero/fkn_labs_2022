import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/const_styles.dart';

import '../list_of_heroes.dart';

class HeroDetailed extends StatelessWidget {
  final HeroData data;

  const HeroDetailed({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    textStyle;
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(children: <Widget>[
          Positioned.fill(
              child: Image.network(
            data.image,
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 30,left: 30,right: 30),
            child: Column(
              children: <Widget>[
                Flexible(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                        child: Text(
                  data.description,
                  style: textStyle,
                )))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87),
                      // <-- Button color
                      overlayColor:
                          MaterialStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.red;
                        } // <-- Splash color
                      }),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back),
                  )))
        ]));
  }
}
