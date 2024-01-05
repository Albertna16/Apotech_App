import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(Assets.assetsImageAlbert),
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Image.asset(
                Assets.assetsIconNotification,
                color: white,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Image.asset(
                Assets.assetsIconBox,
                color: white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
