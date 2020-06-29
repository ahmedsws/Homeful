import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/CatagoriesSliver.dart';
class MineListview extends StatefulWidget {
  @override
  _MineListviewState createState() => _MineListviewState();
}

class _MineListviewState extends State<MineListview> {

  static List<Tieles> tiles  = List() ..add(Tieles(title: 'book', subtitle:'this is an example' , leading: images[0] , trailing: Icon(Icons.book)))
    ..add(Tieles(title: 'book1', subtitle:'this is an example' , leading: images[1] , trailing: Icon(Icons.book)))
    ..add(Tieles(title: 'book2', subtitle:'this is an example' , leading: images[2] , trailing: Icon(Icons.book))) ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context , int index){
          return Dismissible(
            key: Key(tiles[index].title),
            child: _listTile(index),
            background: green(),
            secondaryBackground: red(),
            onDismissed: (DismissDirection d){
              d == DismissDirection.startToEnd ? _done(index) : _delete(index) ;
            },
          );
        });
  }
  void _delete(int index){
    setState(() {
      tiles.removeAt(index);
    });
  }
  void _done(int index){
    setState(() {
      tiles.removeAt(index);
    });
  }

  Container green() => Container(
    color: Colors.green,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.check , color: Colors.white),
      ],
    ),
    padding: const EdgeInsets.all(16.0),
  );

  Container red() => Container(
    color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.delete , color: Colors.white),
      ],
    ),
    padding: const EdgeInsets.all(16.0),
  );
  ListTile _listTile(int index) => ListTile(
    title: Text(tiles[index].title),
    subtitle: Text(tiles[index].subtitle),
    trailing: tiles[index].trailing,
    leading: CircleAvatar(
      radius: 30,
      backgroundImage:  tiles[index].leading.image,
      ),
  );
}



class Tieles {
  String title ;
  String subtitle ;
  Image leading ;
  Icon trailing  ;
  Tieles({this.title, this.subtitle , this.leading , this.trailing});
}

