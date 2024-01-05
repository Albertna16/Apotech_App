import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              "Enter the verify code",
              style: bold24BlueGrey,
            ),
            const SizedBox(height: 8),
            Text(
              "We just send you a verification code via phone +62 821 39 488 953",
              style: regular14BlueGrey45,
            ),
            const SizedBox(height: 25),
            OtpTextField(
              numberOfFields: 6,
              borderColor: blueGrey10,
              focusedBorderColor: blueGrey75,
              showFieldAsBox: false,
              borderWidth: 1,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            const SizedBox(height: 30),
            Center(
              child: ButtonComponent(
                title: Text(
                  "SUBMIT CODE",
                  style: bold16White,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RoutesNavigation.successRegisterScreen,
                  );
                },
                backgroundColor: blue,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                "The verify code will expire in 00:59",
                style: regular14BlueGrey45,
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Code",
                  style: regular14Blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
