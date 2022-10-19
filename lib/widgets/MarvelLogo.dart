import 'package:flutter/cupertino.dart';

class MarvelLogo extends StatelessWidget {
  const MarvelLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        alignment: Alignment.center,
        scaleY: 0.3,
        scaleX: 0.4,
        child: const Image(
            image: AssetImage('assets/marvel_logo.png'), fit: BoxFit.contain));
  }
}