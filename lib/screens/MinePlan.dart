import 'package:flutter/material.dart';
import 'package:schwifty_app/Widgets/MineListview.dart';
import 'package:schwifty_app/pages/Daily.dart';
import 'package:schwifty_app/pages/Listview.dart';
import 'package:schwifty_app/pages/Monthly.dart';
import 'package:schwifty_app/pages/Weekly.dart';

class MinePlan extends StatefulWidget {
  @override
  _MinePlanState createState() => _MinePlanState();
}

class _MinePlanState extends State<MinePlan> with TickerProviderStateMixin {
  Plans _value;
  Widget _selectedScreen ;
  TabController _controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(vsync: this, length:  3);
    _value = listItems[0];
    _selectedScreen = Daily();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TabBar(
        labelColor: Colors.lightGreen.shade400,
        controller: _controller,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.today),
            child: Text('Daily'),
          ),
          Tab(
            icon: Icon(Icons.weekend),
            child: Text('Weekly'),
          ),
          Tab(
            icon: Icon(Icons.calendar_today),
            child: Text('Monthly'),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('My Plans'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _controller,
          children: <Widget>[
            Daily(),
            Weekly(),
            Monthly()
          ],
        ),
      ),
    );
  }

  void _onChange(value) {
    setState(() {
      _value = value;
      if (value == items[0]) {
        _selectedScreen = Daily();
      } else if (value == items[1]) {
        _selectedScreen = Weekly();
      } else
        _selectedScreen = Monthly();
    });
  }

  List<Plans> listItems = [
    Plans(icon: Icon(Icons.today), plan: 'Daily'),
    Plans(icon: Icon(Icons.weekend), plan: 'Weekly'),
    Plans(icon: Icon(Icons.calendar_today), plan: 'Monthly')
  ];

  List<Widget> _screens = [Daily(), Weekly(), Monthly()];

}

class Plans {
  String plan;
  Icon icon;

  Plans({this.icon, this.plan});
}



