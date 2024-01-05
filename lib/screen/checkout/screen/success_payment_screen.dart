import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            Assets.assetsIconArrowBack,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 96),
          Image.asset(Assets.assetsImageSuccess),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: Column(
              children: [
                Text(
                  "Thank You",
                  style: bold24BlueGrey,
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: regular14BlueGrey45Sofia,
                    children: [
                      const TextSpan(
                        text: "Your Order will be delivered with invoice ",
                      ),
                      TextSpan(
                        text: "#INV20231212",
                        style: regular14BlueGrey,
                      ),
                      const TextSpan(
                        text:
                            ". You can track the delivery in the order section.",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonComponent(
              title: Text(
                "CONTINUE",
                style: bold16White,
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesNavigation.homeScreen,
                  (route) => false,
                );
              },
              backgroundColor: blue,
            ),
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
