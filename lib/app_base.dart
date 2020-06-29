import 'package:Homeful/screens/categories_screen/category_screen.dart';
import 'package:Homeful/screens/home_screen/Ingrediants.dart';
import 'package:flutter/material.dart';

class AppBase extends StatelessWidget {
  const AppBase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.teal,
      ),
      home: Ingrediants(),
    );
  }
}
