import 'package:flutter/material.dart';
import 'package:shareinhappiness/screens/home/components/body.dart';
import 'package:shareinhappiness/screens/home/components/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
