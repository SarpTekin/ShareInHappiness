import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/default_button.dart';
import 'package:shareinhappiness/models/Patient.dart';
import 'package:shareinhappiness/screens/home/home_screen.dart';
import 'package:shareinhappiness/size_config.dart';

import 'patient_images.dart';

class Body extends StatelessWidget {
  final Patient patient;

  const Body({Key key, @required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PatientImages(patient: patient),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RoundedContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: patient.pName,
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(20),
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          TextSpan(text: "\n"),
                          TextSpan(
                            text: "Condition: ",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          TextSpan(
                              text: patient.conditions[0],
                              style: TextStyle(color: Colors.white)),
                          TextSpan(text: "\n"),
                          TextSpan(
                            text: "Age: ",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          //TODO age int text spanla yazılmıyor
                          TextSpan(
                              text: "25",
                              style: TextStyle(color: Colors.white)),
                          TextSpan(text: "\n"),
                          TextSpan(
                            text: "Description: ",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          TextSpan(
                              text: patient.description,
                              style: TextStyle(color: Colors.white)),
                        ])),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        DefaultButton(
          text: "Wishlist",
          press: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        )
      ],
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
