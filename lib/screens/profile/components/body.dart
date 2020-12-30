import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/screens/profile/profile_options/edit_account/edit_account_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/notifications/notifications_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/payment_settings/payment_settings_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/wishlist/wishlist_screen.dart';
import 'package:shareinhappiness/screens/sign_in/sign_in_screen.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Edit Account",
            press: () {
              Navigator.pushNamed(context, EditAccountScreen.routeName);
            }),
        SizedBox(
          height: 5,
        ),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Notifications",
            press: () {
              Navigator.pushNamed(context, NotificationsScreen.routeName);
            }),
        SizedBox(
          height: 5,
        ),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Wishlist",
            press: () {
              Navigator.pushNamed(context, WishlistScreen.routeName);
            }),
        SizedBox(
          height: 5,
        ),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Payment Settings",
            press: () {
              Navigator.pushNamed(context, PaymentSettingsScreen.routeName);
            }),
        SizedBox(
          height: 5,
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "Log out",
          press: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: kPrimaryColor,
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(color: Colors.white),
              )),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
