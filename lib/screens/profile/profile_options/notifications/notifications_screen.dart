import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/notifications_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO scrolview with padding
      appBar: AppBar(
        title: Text("Notification"),
      ),
    );
  }
}
