import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/round_icon_button.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/screens/home/components/custom_navigation_bar.dart';

class PaymentSettingsScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/payment_settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        title: Text(
          "Payment Settings",
          style: TextStyle(color: kPrimaryColor),
        ),
        backgroundColor: Colors.white,
        leading: RoundIconBtn(
          iconData: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
