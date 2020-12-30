import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/Patient.dart';
import 'package:shareinhappiness/size_config.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    Key key,
    this.press,
    this.id,
  }) : super(key: key);

  final GestureTapCallback press;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(150),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  demoPatients[id].images[0],
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
                      text: demoPatients[id].pName,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                        text: demoPatients[id].conditions[0],
                        style: TextStyle(color: Colors.white))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
