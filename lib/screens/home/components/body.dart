import 'package:flutter/material.dart';
import 'package:shareinhappiness/screens/home/components/custom_appBar.dart';
import 'package:shareinhappiness/screens/home/components/news_showroom.dart';
import 'package:shareinhappiness/screens/home/components/section_tile.dart';
import 'package:shareinhappiness/size_config.dart';

import 'market_showroom.dart';
import 'patient_showroom.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          NewsShowroom(),
          SizedBox(height: getProportionateScreenWidth(20)),
          SectionTitle(title: "People in Bilkent That needs help", press: null),
          SizedBox(height: getProportionateScreenWidth(10)),
          PatientShowroom(),
          SizedBox(height: getProportionateScreenWidth(20)),
          SectionTitle(title: "Medical markets near you", press: null),
          MarketShowroom(),
        ],
      ),
    );
  }
}
