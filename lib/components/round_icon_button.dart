import 'package:flutter/material.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/size_config.dart';

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(
          iconData,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
