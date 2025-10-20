import 'package:btcui/pages/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(),
    );
  }
}

TextStyle bodyMedium = TextStyle(fontSize: 17);
TextStyle bodyMediumBold = TextStyle(fontSize: 17,fontWeight: FontWeight.bold);
TextStyle bodyLarge = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
TextStyle bodySmallGrey = TextStyle(color: Colors.grey,fontSize: 17);