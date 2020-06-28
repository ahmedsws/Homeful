import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schwifty_app/Widgets/PopUpMenu.dart';

class CatagoriesSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      sliver: SliverList(
          delegate: SliverChildListDelegate(List.generate(
        4,
        (index) => Card(
          margin: EdgeInsets.only(top: 30.0),
          shape:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(13.0)),
          elevation: 16,
          child: Column(children: <Widget>[
            Padding(
              child: titleRow(index),
              padding: EdgeInsets.all(16.0),
            ),
            _ScrollableItems(),
            Divider(
              height: 20,
            )
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
  element(title: 'Books', icon: Icon(Icons.book)),
  element(title: 'Movies', icon: Icon(Icons.movie)),
  element(title: 'Funny videos', icon: Icon(Icons.video_label)),
  element(title: 'Relaxing Music', icon: Icon(FontAwesomeIcons.music))
];

Row titleRow(int index) => Row(
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
                color: Colors.lightGreen,
              )
            ],
          ),
          translation: Offset(0, -0.8),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'View all',
            style: TextStyle(
                color: Colors.blueAccent.shade100,
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
            children: <Widget>[
              Text('Book Name'),
              Divider(
                color: Colors.lightGreen.shade50,
                height: 3.0,
              ),
              Container(
                width: 100,
                height: 100,
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
    image: AssetImage('assets/images/Books/download.jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (1).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (2).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (3).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (4).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (5).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (6).jpg'),
  ),
  Image(
    image: AssetImage('assets/images/Books/download (7).jpg'),
  ),
];

