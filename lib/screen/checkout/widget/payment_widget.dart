import 'package:apotech_app/data/models/payment/payment.dart';
import 'package:apotech_app/screen/checkout/provider/checkout_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: blueGrey10),
          borderRadius: BorderRadius.circular(6),
          color: white),
      child: Consumer<CheckoutProvider>(
        builder: (context, checkoutProvider, child) {
          return ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(keepScrollOffset: false),
            itemCount: paymentList.length,
            itemBuilder: (context, index) {
              final Payment payment = paymentList[index];
              return InkWell(
                onTap: (() {
                  checkoutProvider.setCurrentPayment(index);
                }),
                child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: blueGrey10),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(payment.imageAsset),
                  ),
                  title: Text(payment.namePayment, style: semiBold14BlueGrey),
                  trailing: Container(
                    height: 18,
                    width: 18,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: checkoutProvider.selectedPayment == index
                            ? blue
                            : blueGrey15,
                      ),
                    ),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: checkoutProvider.selectedPayment == index
                            ? blue
                            : white,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
