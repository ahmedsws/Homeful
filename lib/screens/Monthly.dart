import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/MineListview.dart';
class Monthly extends StatefulWidget {
  @override
  _MonthlyState createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  MineListview()
    );
  }
}
