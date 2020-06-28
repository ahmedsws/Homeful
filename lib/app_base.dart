import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
