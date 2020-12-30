import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/Medical_Market.dart';
import 'package:shareinhappiness/size_config.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({
    Key key,
    @required this.id,
    this.press,
  }) : super(key: key);

  final int id;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(150),
        height: getProportionateScreenHeight(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                demoMarkets[0].images[0],
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
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: demoMarkets[0].mName,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: demoMarkets[0].address,
                      style: TextStyle(color: Colors.white))
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
