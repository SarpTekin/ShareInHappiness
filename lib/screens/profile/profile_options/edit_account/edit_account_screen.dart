import 'package:flutter/material.dart';

class EditAccountScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/edit_account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO edit name address phone num
      appBar: AppBar(
        title: Text("EditAccount"),
      ),
    );
  }
}
