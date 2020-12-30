import 'package:flutter/material.dart';
import 'package:shareinhappiness/screens/home/components/news_card.dart';

class NewsShowroom extends StatelessWidget {
  const NewsShowroom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            NewsCard(
              id: 0,
            ),
            NewsCard(
              id: 1,
            ),
            NewsCard(
              id: 2,
            ),
          ]),
        )
      ],
    );
  }
}
