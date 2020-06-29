import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/MineListview.dart';
class Daily extends StatefulWidget {

  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child: MineListview(),
        );
  }
}
