import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/News.dart';
import 'package:shareinhappiness/screens/home/components/news_card.dart';
import 'package:shareinhappiness/screens/news_details/news_details_screen.dart';

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
              press: () {
                Navigator.pushNamed(context, NewsDetailsScreen.routeName,
                    arguments: NewsDetailsArgument(news: demoNews[0]));
              },
            ),
            NewsCard(
              id: 1,
              press: () {
                Navigator.pushNamed(context, NewsDetailsScreen.routeName,
                    arguments: NewsDetailsArgument(news: demoNews[1]));
              },
            ),
            NewsCard(
              id: 2,
              press: () {
                Navigator.pushNamed(context, NewsDetailsScreen.routeName,
                    arguments: NewsDetailsArgument(news: demoNews[2]));
              },
            ),
          ]),
        )
      ],
    );
  }
}
