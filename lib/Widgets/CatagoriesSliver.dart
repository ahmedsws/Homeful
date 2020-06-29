import 'package:Homeful/Widgets/PopUpMenu.dart';
import 'package:Homeful/screens/categories_screen/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatagoriesSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      sliver: SliverList(
          delegate: SliverChildListDelegate(List.generate(
        4,
        (index) => Card(
          margin: EdgeInsets.only(top: 5.0),
          elevation: 0.0,
          child: Column(children: <Widget>[
            Padding(
              child: titleRow(index, context),
              padding: EdgeInsets.all(16.0),
            ),
            _ScrollableItems(),
            // Divider(
            //   height: 20,
            // ),
          ]),
        ),
      ))),
    );
  }
}

class element {
  String title;

  Icon icon;

  element({this.title, this.icon});
}

List<element> Catag = [
  element(title: 'Sports', icon: Icon(Icons.directions_run)),
  element(title: 'Meditation', icon: Icon(Icons.healing)),
  element(title: 'Joy', icon: Icon(Icons.games)),
  element(title: 'Education', icon: Icon(Icons.school)),
  // element(title: 'Relaxing Music', icon: Icon(FontAwesomeIcons.music))
];

Row titleRow(int index, BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        FractionalTranslation(
          child: Row(
            children: <Widget>[
              Text(
                Catag[index].title,
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Icon(
                Catag[index].icon.icon,
                size: 35,
                color: Colors.teal,
              )
            ],
          ),
          translation: Offset(0, 0),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CategoryScreen(),
              ),
            );
          },
          child: Text(
            'View all',
            style: TextStyle(
                color: Colors.teal,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

SingleChildScrollView _ScrollableItems() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child: Row(children: List.generate(8, (index) => _preView(index))),
    );

Stack _preView(int index) => Stack(
      children: <Widget>[
        Positioned(
          child: FractionalTranslation(
            child: Menu(),
            translation: Offset(0.1, -0.2),
          ),
          top: 0.0,
          right: 0.0,
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Text('Idea title'),
              ),
              Divider(
                color: Colors.lightGreen.shade50,
                height: 3.0,
              ),
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(
                    bottom: 3.0, right: 8.0, left: 8.0, top: 5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: _images[index].image, fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {},
                ),
              )
            ],
          ),
        )
      ],
    );

List<Image> _images = [
  Image(
    image: AssetImage('assets/images/1.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/2.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/4.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/3.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/5.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/1.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/4.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/2.jpg'),
  ),
];
