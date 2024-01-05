import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/screen/transaction/widget/price_widget.dart';
import 'package:apotech_app/screen/transaction/widget/product_cart.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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
        title: Text("Your cart", style: bold16BlueGrey),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add, color: blue, weight: 1.5),
                    Text("Add more", style: light14BlueSofia),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const ProductCart(),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: lightGrey60),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                leading: Image.asset(Assets.assetsIconPromoTag),
                title: Text(
                  "1 Coupon applied",
                  style: semiBold14Green,
                ),
                trailing: Image.asset(Assets.assetsIconClose),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Payment Summary",
              style: semiBold16BlueGrey,
            ),
            const SizedBox(height: 16),
            const PriceWidget(price: "Rp 228.800", label: "Order Total"),
            const SizedBox(height: 16),
            const PriceWidget(price: "- Rp 28.800", label: "Item Discount"),
            const SizedBox(height: 16),
            const PriceWidget(price: "- Rp 15.800", label: "Coupon Discount"),
            const SizedBox(height: 16),
            const PriceWidget(price: "Free", label: "Shipping"),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const PriceWidget(price: "Rp 185.000", label: "Total"),
            const SizedBox(height: 70),
            Center(
              child: ButtonComponent(
                title: Text("Place Order @ Rp 185.000", style: bold16White),
                onPressed: (){
                  Navigator.pushNamed(context, RoutesNavigation.checkoutScreen);
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
