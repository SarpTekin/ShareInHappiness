import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/no_account_text.dart';
import 'package:shareinhappiness/screens/sign_in/components/sign_form.dart';
import 'package:shareinhappiness/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(image: AssetImage('assets/images/splash_3.png')),
              Text(
                "Sign in with your e-mail and password and continue being a Burak Alaydın to others",
              ),
              Spacer(),
              SignForm(),
              Spacer(),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
