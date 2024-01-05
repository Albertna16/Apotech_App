import 'dart:async';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  Future<void> checkLogin(BuildContext context) async {
    Timer(
        const Duration(seconds: 2),
        () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesNavigation.onboardingScreen,
            (route) => false,
          );
        },
      );
  }
}
