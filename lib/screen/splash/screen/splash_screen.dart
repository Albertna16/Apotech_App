import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/splash/provider/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Provider.of<SplashProvider>(context, listen: false).checkLogin(context);
    });

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                Assets.assetsImageDecoration,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image.asset(Assets.assetsIconApotechLogo),
          ),
        ],
      ),
    );
  }
}
