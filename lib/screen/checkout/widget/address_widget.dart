import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/data/models/address/address.dart';
import 'package:apotech_app/screen/checkout/provider/checkout_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Consumer<CheckoutProvider>(
        builder: (context, checkoutProvider, child) {
          return ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(keepScrollOffset: false),
            itemCount: addressList.length,
            itemBuilder: (context, index) {
              final Address addres = addressList[index];
              return Container(
                height: 93,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsetsDirectional.only(bottom: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: blueGrey10),
                  borderRadius: BorderRadius.circular(6),
                  color: white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        checkoutProvider.setCurrentAddress(index);
                      }),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color: checkoutProvider.selectedAddress == index
                                    ? blue
                                    : blueGrey15,
                              ),
                            ),
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: checkoutProvider.selectedAddress == index
                                    ? blue
                                    : white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(addres.labelAddress,
                                  style: semiBold14BlueGrey),
                              Text(addres.numberPhone,
                                  style: regular13BlueGrey45),
                              Text(addres.address, style: regular13BlueGrey45),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(Assets.assetsIconEdit),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
