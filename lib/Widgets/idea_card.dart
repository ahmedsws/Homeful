import 'package:Homeful/screens/details_screen/details_screen.dart';
import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  const IdeaCard();

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => Scaffold(
              body: DetailsScreen(),
            ),
          ),
        ),
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(13),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 8),
                child: Text(
                  'Title',
                ),
              ),
              Image(
                image: AssetImage('assets/images/5.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(13.0),
                child: Text(
                  'Descreption',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  softWrap: true,
                ),
              ),
              Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: -20,
                      right: MediaQuery.of(context).size.width * .01,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).accentColor,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.bookmark),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
