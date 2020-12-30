import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static String routeName = "/profile/profile_options/wishlist";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO scrolview with padding
      appBar: AppBar(
        title: Text("WishList"),
      ),
    );
  }
}
