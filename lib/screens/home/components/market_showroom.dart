import 'package:flutter/material.dart';

import 'market_card.dart';

class MarketShowroom extends StatelessWidget {
  const MarketShowroom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        MarketCard(
          id: 0,
        ),
        MarketCard(id: 1),
        MarketCard(id: 2),
      ]),
    );
  }
}
