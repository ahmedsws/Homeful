import 'package:Homeful/Widgets/CatagoriesSliver.dart';
import 'package:Homeful/Widgets/TheBar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Ingrediants extends StatefulWidget {
  @override
  _IngrediantsState createState() => _IngrediantsState();
}

class _IngrediantsState extends State<Ingrediants> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[TheBar(), CatagoriesSliver()],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.teal,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.schedule),
            title: Text('Plans'),
            activeColor: Colors.teal,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bookmark),
            title: Text(
              'Bookmarks',
            ),
            activeColor: Colors.teal,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
