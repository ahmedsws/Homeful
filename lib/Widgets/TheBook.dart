import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CatagoriesSliver.dart';

class TheBook extends StatelessWidget {
  final int index;
  const TheBook({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        // tag: Books[index],
        child: Card(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                // child: Image(
                //   fit: BoxFit.contain,
                //   image: images[index].image,
                // ) ,
              ),
              Divider(
                height: 20.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'This Book is',
                    style: TextStyle(fontSize: 32),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                  ),
                  Text(
                    'jkdjljfds jkjdkfdks djkfjdkjf djkfjdj  jdkfjkd \n'
                    'jkdfkdsjk jdkfjkdj fd djkfjndf dkjf jk kkdfjkj d \n'
                    'jkdfnkkdjkfjsjklhjo aok kjdkfjkd fkd',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
