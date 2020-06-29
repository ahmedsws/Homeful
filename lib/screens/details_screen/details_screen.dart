import 'package:Homeful/screens/details_screen/details_description.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              'Title',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              softWrap: true,
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/5.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    height: height * .3,
                  ),
                  top: 0,
                ),
                Positioned.fill(
                  top: height * .3 - 25,
                  child: DetailsDescription('Description passed'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
