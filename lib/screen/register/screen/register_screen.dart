import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/components/textform_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/screen/register/provider/register_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      body: Consumer<RegisterProvider>(
        builder: (context, registerProvider, child) {
          return Form(
            key: registerProvider.formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create your account",
                    style: bold24BlueGrey,
                  ),
                  const SizedBox(height: 24),
                  TextFormComponent(
                    controller: registerProvider.nameController,
                    labelText: "Your Name",
                    labelStyle: GoogleFonts.overpass(
                      color: blueGrey45,
                      fontWeight: FontWeight.w400,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name cannot be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormComponent(
                    controller: registerProvider.phoneController,
                    labelText: "Mobile Number",
                    labelStyle: GoogleFonts.overpass(
                      color: blueGrey45,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Telephone number cannot be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormComponent(
                    controller: registerProvider.emailController,
                    labelText: "Email",
                    labelStyle: GoogleFonts.overpass(
                      color: blueGrey45,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot be empty';
                      } else if (!registerProvider.validateEmail(value)) {
                        return 'Email does not match the format';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormComponent(
                    controller: registerProvider.passwordController,
                    obscureText: !registerProvider.passwordVisible,
                    labelText: "Password",
                    labelStyle: GoogleFonts.overpass(
                      color: blueGrey45,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputType: TextInputType.emailAddress,
                    suffixIcon: IconButton(
                      onPressed: () {
                        registerProvider.togglePassword();
                      },
                      icon: Icon(
                        registerProvider.passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: blueGrey45,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ButtonComponent(
                      title: Text(
                        "CREATE ACCOUNT",
                        style: bold16White,
                      ),
                      onPressed: () {
                        if (registerProvider.formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, RoutesNavigation.verifyScreen);
                        }
                      },
                      backgroundColor: blue,
                      shadowColor: blue10,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios_new, color: blueGrey45,),
                        const SizedBox(width: 10),
                        Text(
                          "Already have account?  Login",
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
