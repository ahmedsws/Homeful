import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homeful'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.library_books),
            ),
            Tab(
              icon: Icon(Icons.library_books),
            ),
            Tab(
              icon: Icon(Icons.library_books),
            ),
            Tab(
              icon: Icon(Icons.library_books),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.library_books),
          Icon(Icons.library_books),
          Icon(Icons.library_books),
          Icon(Icons.library_books),
        ]),
      ),
    );
  }
}
