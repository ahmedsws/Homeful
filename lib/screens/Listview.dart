import 'package:flutter/material.dart';
class Listviewex extends StatefulWidget {
  @override
  _ListviewexState createState() => _ListviewexState();
}

class _ListviewexState extends State<Listviewex> {
  var value ;
  _onchange(DropdownMenuItem item){
    setState(() {
      value  = item ;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value  = items[0] ;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Listviwe'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 120,
            ),
            DropdownButton(
              value: value,
              onChanged: (index){
                _onchange(index);
              },
              items: [
                ...items
              ],
            )
          ],
        ),
      ),
    );;
  }
}


List<DropdownMenuItem> items = [
  DropdownMenuItem(
    child: Text('Daily'),
  ),
  DropdownMenuItem(
    child: Text('weekly'),
  ),
  DropdownMenuItem(
    child: Text('Monthly'),
  )
];