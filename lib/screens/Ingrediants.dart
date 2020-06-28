import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/CatagoriesSliver.dart';
import 'package:schwifty_app/Widgets/TheBar.dart';
class Ingrediants extends StatefulWidget {
  @override
  _IngrediantsState createState() => _IngrediantsState();
}

class _IngrediantsState extends State<Ingrediants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            TheBar(),
            CatagoriesSliver()
          ],
        ),
      ),
    );
  }
}
