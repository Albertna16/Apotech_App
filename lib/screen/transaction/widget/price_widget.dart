import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final String label;
  final String price;
  const PriceWidget({super.key, required this.price, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: label == "Total" ? regular16BlueGrey : regular14BlueGrey45 ),
        Text(price, style: label == "Total" ? bold16BlueGrey :regular14BlueGrey),
      ],
    );
  }
}
