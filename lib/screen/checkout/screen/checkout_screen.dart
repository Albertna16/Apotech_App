import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/screen/checkout/widget/address_widget.dart';
import 'package:apotech_app/screen/checkout/widget/payment_widget.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
        title: Text("Checkout", style: bold16BlueGrey),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 Items in your cart",
                  style: light14BlueGrey45SofiaNoShadow,
                ),
                Text("TOTAL", style: light14BlueGrey45SofiaNoShadow),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Rp 185.000", style: semiBold16BlueGrey),
            ),
            const SizedBox(height: 12),
            Text("Delivery Addres", style: semiBold16BlueGrey),
            const SizedBox(height: 15),
            const AddressWidget(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add, weight: 1.5, color: blue),
                Text("Add Address", style: light14BlueSofia)
              ],
            ),
            const SizedBox(height: 10),
            Text("Payment method", style: semiBold16BlueGrey),
            const SizedBox(height: 12),
            const PaymentWidget(),
            const SizedBox(height: 20),
            Center(
              child: ButtonComponent(
                title: Text("Pay Now Rp 185.000", style: bold16White),
                onPressed: () {
                  Navigator.pushNamed(context, RoutesNavigation.successPaymentScreen);
                },
                backgroundColor: blue,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
