import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/round_icon_button.dart';
import 'package:shareinhappiness/screens/home/components/custom_navigation_bar.dart';
import 'package:shareinhappiness/screens/profile/components/profile_pic.dart';
import 'package:shareinhappiness/screens/profile/profile_options/edit_account/components/body.dart';

class EditAccountScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/edit_account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.white,
          leading: RoundIconBtn(
            iconData: Icons.arrow_back_ios,
            press: () => Navigator.pop(context),
          ),
        ),
        body: Body());
  }
}
