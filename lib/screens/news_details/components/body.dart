import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/News.dart';
import 'package:shareinhappiness/screens/details/components/body.dart';
import 'package:shareinhappiness/size_config.dart';

class Body extends StatelessWidget {
  final News news;

  const Body({Key key, this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: news.title,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(20),
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: news.article,
                      style: TextStyle(color: Colors.white)),
                  TextSpan(text: "\n"),
                ])),
              )
            ],
          ),
        )
      ],
    );
  }
}
