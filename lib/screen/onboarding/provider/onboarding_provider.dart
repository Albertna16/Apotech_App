import 'package:apotech_app/constant/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingProvider extends ChangeNotifier {
  final _introKey = GlobalKey<IntroductionScreenState>();
  GlobalKey<IntroductionScreenState> get introKey => _introKey;

  void onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, RoutesNavigation.welcomeScreen);
  }
}