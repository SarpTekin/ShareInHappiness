import 'package:flutter/material.dart';
import 'package:shareinhappiness/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 50, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14), color: Colors.black),
          ),
          GestureDetector(
              onTap: press,
              child:
                  Text("See More", style: TextStyle(color: Color(0xFFBBBBBB))))
        ],
      ),
    );
  }
}
