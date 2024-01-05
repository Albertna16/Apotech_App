import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.assetsImageWelcome),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 60),
            child: Column(
              children: [
                Text(
                  "Welcome to Apotech",
                  style: bold24BlueGrey,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  "Do you want some help with your health to et better life?",
                  style: light16BlueGrey45,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ButtonComponent(
            title: Text(
              "SIGN UP WITH EMAIL",
              style: bold16White,
            ),
            backgroundColor: blue,
            shadowColor: blue10,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          ButtonComponent(
            title: Row(
              children: [
                Image.asset(
                  Assets.assetsIconFacebook,
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 20),
                Text(
                  "CONTINUE WITH FACEBOOK",
                  style: bold13BlueGrey75,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            border: BorderSide(width: 1, color: blueGrey10),
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          ButtonComponent(
            title: Row(
              children: [
                Image.asset(
                  Assets.assetsIconGoogle,
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 20),
                Text(
                  "CONTINUE WITH GMAIL",
                  style: bold13BlueGrey75,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            border: BorderSide(width: 1, color: blueGrey10),
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                RoutesNavigation.loginScreen,
              );
            },
            child: Text(
              "LOGIN",
              style: regular14BlueGrey45,
            ),
          ),
        ],
      ),
    );
  }
}
