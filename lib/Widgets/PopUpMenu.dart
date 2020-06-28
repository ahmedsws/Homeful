import 'package:flutter/material.dart';

class Menu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: 30.0,
      child: PopupMenuButton(
        icon: Icon(Icons.more_vert),
        itemBuilder: (context) => menuItems
            .map((item) => PopupMenuItem(
                  value: item,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(item, style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(35);
}

List<String> menuItems = [
  'add to tasks ',
  'add to wish list',
  'remove from suggestion'
];
