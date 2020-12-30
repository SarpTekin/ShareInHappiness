import 'package:flutter/material.dart';
import 'package:shareinhappiness/screens/home/home_screen.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Image.asset("assets/icons/icons8-search-64.png"),
                onPressed: null),
            IconButton(
                icon: Image.asset("assets/icons/icons8-home-64.png"),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }),
            IconButton(
                icon: Image.asset("assets/icons/icons8-shopping-cart-64.png"),
                onPressed: null),
          ],
        ),
      ),
    );
  }
}
