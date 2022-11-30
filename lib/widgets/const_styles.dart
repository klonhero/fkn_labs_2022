import 'package:flutter/material.dart';

const textStyle = TextStyle(
    fontSize: 25.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
// bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.black),
      Shadow(
// bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.black),
      Shadow(
// topRight
          offset: Offset(1.5, 1.5),
          color: Colors.black),
      Shadow(
// topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.black),
    ]);
