import 'package:flutter/material.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/models/Cart.dart';
import 'package:shareinhappiness/size_config.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/images/ps4_console_white_1.png"),
              )),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demoCarts[0].product.prName,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            Text.rich(
              TextSpan(
                  text: "\$${cart.product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: "x${cart.numOfItems}",
                      style: TextStyle(color: kTextColor),
                    )
                  ]),
            )
          ],
        ),
      ],
    );
  }
}
