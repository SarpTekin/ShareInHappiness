import 'package:flutter/material.dart';

class PaymentSettingsScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/payment_settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO scrolview with padding
      appBar: AppBar(
        title: Text("Payment"),
      ),
    );
  }
}
