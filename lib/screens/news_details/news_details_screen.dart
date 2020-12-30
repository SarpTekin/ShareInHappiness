import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/round_icon_button.dart';
import 'package:shareinhappiness/models/News.dart';
import 'package:shareinhappiness/screens/news_details/components/body.dart';

class NewsDetailsScreen extends StatelessWidget {
  static String routeName = "/news_details";
  @override
  Widget build(BuildContext context) {
    final NewsDetailsArgument argument =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: RoundIconBtn(
          iconData: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ),
      ),
      body: Body(news: argument.news),
    );
  }
}

class NewsDetailsArgument {
  final News news;

  NewsDetailsArgument({this.news});
}
