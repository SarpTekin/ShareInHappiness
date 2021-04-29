import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/round_icon_button.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/models/Cart.dart';
import 'package:shareinhappiness/screens/cart/components/body.dart';
import 'package:shareinhappiness/size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CartCard(),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA))
          ]),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [Text.rich(TextSpan(text: "Total: "))],
          )
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        Text(
          "Yours Cart",
          style: TextStyle(color: kPrimaryColor),
        ),
        Text(
          "${demoCarts.length} items",
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ),
    backgroundColor: Colors.white,
    leading: RoundIconBtn(
      iconData: Icons.arrow_back_ios,
      press: () => Navigator.pop(context),
    ),
  );
}
