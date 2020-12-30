import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/News.dart';
import 'package:shareinhappiness/size_config.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key key, this.press, this.id}) : super(key: key);

  final int id;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(360),
          height: getProportionateScreenHeight(200),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  demoNews[id].images[0],
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15)
                      ])),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(20)),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: demoNews[id].title,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: demoNews[id].article,
                          style: TextStyle(color: Colors.white))
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
