import 'package:flutter/material.dart';
import 'package:shareinhappiness/screens/details/details_screen.dart';
import 'package:shareinhappiness/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:shareinhappiness/screens/home/home_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/edit_account/edit_account_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/notifications/notifications_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/payment_settings/payment_settings_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_options/wishlist/wishlist_screen.dart';
import 'package:shareinhappiness/screens/profile/profile_screen.dart';
import 'package:shareinhappiness/screens/sign_in/sign_in_screen.dart';
import 'package:shareinhappiness/screens/sign_up/sign_up_screen.dart';
import 'package:shareinhappiness/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  EditAccountScreen.routeName: (context) => EditAccountScreen(),
  NotificationsScreen.routeName: (context) => NotificationsScreen(),
  PaymentSettingsScreen.routeName: (context) => PaymentSettingsScreen(),
  WishlistScreen.routeName: (context) => WishlistScreen(),
};
