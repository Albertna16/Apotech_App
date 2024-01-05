import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/screen/category/screen/category.dart';
import 'package:apotech_app/screen/checkout/provider/checkout_provider.dart';
import 'package:apotech_app/screen/checkout/screen/checkout_screen.dart';
import 'package:apotech_app/screen/checkout/screen/success_payment_screen.dart';
import 'package:apotech_app/screen/home/provider/home_provider.dart';
import 'package:apotech_app/screen/home/provider/main_provider.dart';
import 'package:apotech_app/screen/home/screen/home_screen.dart';
import 'package:apotech_app/screen/home/screen/main_screen.dart';
import 'package:apotech_app/screen/login/provider/login_provider.dart';
import 'package:apotech_app/screen/login/screen/login_screen.dart';
import 'package:apotech_app/screen/onboarding/provider/onboarding_provider.dart';
import 'package:apotech_app/screen/onboarding/screen/onboarding_screen.dart';
import 'package:apotech_app/screen/product/provider/product_provider.dart';
import 'package:apotech_app/screen/product/screen/product_screen.dart';
import 'package:apotech_app/screen/profile/screen/profile_screen.dart';
import 'package:apotech_app/screen/register/provider/register_provider.dart';
import 'package:apotech_app/screen/register/screen/register_screen.dart';
import 'package:apotech_app/screen/register/screen/succes_register_screen.dart';
import 'package:apotech_app/screen/register/screen/verify_screen.dart';
import 'package:apotech_app/screen/splash/provider/splash_provider.dart';
import 'package:apotech_app/screen/splash/screen/splash_screen.dart';
import 'package:apotech_app/screen/transaction/provider/transaction_provider.dart';
import 'package:apotech_app/screen/transaction/screen/transaction_screen.dart';
import 'package:apotech_app/screen/welcome/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider()),
        ChangeNotifierProvider(create: (context) => OnboardingProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => RegisterProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => MainProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CheckoutProvider()),
        ChangeNotifierProvider(create: (context) => TransactionProvider()),
      ],
      child: MaterialApp(
        title: 'Apotech',
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesNavigation.splashScreen,
        routes: {
          RoutesNavigation.splashScreen: (context) => const SplashScreen(),
          RoutesNavigation.onboardingScreen: (context) => const OnboardingScreen(),
          RoutesNavigation.welcomeScreen: (context) => const WelcomeScreen(),
          RoutesNavigation.loginScreen: (context) => const LoginScreen(),
          RoutesNavigation.registerScreen: (context) => const RegisterScreen(),
          RoutesNavigation.successRegisterScreen: (context) => const SuccessRegisterScreen(),
          RoutesNavigation.verifyScreen: (context) => const VerifyScreen(),
          RoutesNavigation.homeScreen: (context) => const HomeScreen(),
          RoutesNavigation.mainScreen: (context) => const MainScreen(),
          RoutesNavigation.categoryScreen: (context) => const CategoryScreen(),
          RoutesNavigation.productScreen: (context) => const ProductScreen(),
          RoutesNavigation.transactionScreen: (context) => const TransactionScreen(),
          RoutesNavigation.checkoutScreen: (context) => const CheckoutScreen(),
          RoutesNavigation.successPaymentScreen: (context) => const SuccessPaymentScreen(),
          RoutesNavigation.profileScreen: (context) => const ProfileScreen(),
        },
      ),
    );
  }
}