import 'package:flutter/material.dart';

class TheBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      backgroundColor: Colors.lightGreen.shade50,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        title: Text(
          'Your Plan Ingrediants',
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightGreen.shade200,
          ),
        ),
        background: Image(
          image: AssetImage('assets/images/2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
