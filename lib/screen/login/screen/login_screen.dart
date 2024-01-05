import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/components/textform_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/screen/login/provider/login_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: Consumer<LoginProvider>(
        builder: (context, loginProvider, child) {
          return Form(
            key: loginProvider.formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: bold24BlueGrey,
                      ),
                      const SizedBox(height: 24),
                      TextFormComponent(
                        controller: loginProvider.emailController,
                        prefixIcon: Image.asset(Assets.assetsIconUser),
                        hintText: "Username",
                        hintStyle: regular15BlueGrey45,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name cannot be empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormComponent(
                        controller: loginProvider.passwordController,
                        prefixIcon: Image.asset(Assets.assetsIconLock),
                        hintText: "Password",
                        hintStyle: regular15BlueGrey45,
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot?",
                            style: regular12BlueGrey45,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'password cannot be empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 56),
                      Center(
                        child: ButtonComponent(
                          title: Text(
                            "LOGIN",
                            style: bold16White,
                          ),
                          backgroundColor: blue,
                          shadowColor: blue10,
                          onPressed: () {
                            if (loginProvider.formKey.currentState!
                                .validate()) {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                RoutesNavigation.homeScreen,
                                (route) => false,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RoutesNavigation.registerScreen,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios_new, color: blueGrey45,),
                        const SizedBox(width: 10),
                        Text(
                          "Don't have an account? Sign Up",
                          style: light14BlueGrey45Sofia,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
