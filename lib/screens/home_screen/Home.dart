import 'package:Homeful/screens/home_screen/Ingrediants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Plan A'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ingrediants()));
              },
            ),
            FlatButton(
              child: Text('Plan B'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Plan C'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
