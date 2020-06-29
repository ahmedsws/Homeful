import 'package:flutter/material.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.83, -0.97),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: SingleChildScrollView(
            child: Text.rich(
              TextSpan(
                text:
                    'Hundreds of posts spreading misinformation about Ideas are being left online, ', // default text style
                style: TextStyle(fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "Hundreds of posts spreading misinformation aboutare being left online, according to "
                        "a report from the Center for Countering Digital Hate Some 649 posts were reported to Facebook and Twitter,"
                        "including false cures, anti-vaccination propaganda and conspiracy theories around 5G. 90% remained visible online "
                        "afterwards without any warnings attached, the report suggests."
                        "Facebook said the sample was not representative."
                        "Hundreds of posts spreading misinformation about ideas are being left online, according to "
                        "a report from the Center for Countering Digital Hate Some 649 posts were reported to Facebook and Twitter,"
                        "including false cures, anti-vaccination propaganda and conspiracy theories around 5G. 90% remained visible online "
                        "afterwards without any warnings attached, the report suggests."
                        "Facebook said the sample was not representative.",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              child: Icon(
                Icons.bookmark,
                color: Colors.white,
                size: 24,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(6),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
            ),
          ],
        )
      ],
    );
  }
}
