import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/MineListview.dart';
class Weekly extends StatefulWidget {
  @override
  _WeeklyState createState() => _WeeklyState();
}

class _WeeklyState extends State<Weekly> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: MineListview()
        );
  }
}
