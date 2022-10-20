import 'package:flutter/material.dart';
import 'package:marvel_app/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Scroll',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: const MainPage(),
    );
  }
}


