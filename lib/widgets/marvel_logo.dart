import 'package:flutter/cupertino.dart';

class MarvelLogo extends StatelessWidget {
  const MarvelLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250.0,
      child: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Align(
            alignment: Alignment.center,
            child: Image(
                image: AssetImage('assets/marvel_logo.png'),
            )),
      ),
    );
  }
}
