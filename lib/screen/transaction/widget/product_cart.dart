import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/data/models/product/product.dart';
import 'package:apotech_app/screen/transaction/provider/transaction_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        controller: ScrollController(keepScrollOffset: false),
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Divider(),
        ),
        itemCount: transactionList.length,
        itemBuilder: (context, index) {
          final Product product = transactionList[index];
          return SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // IMAGE PRODUCT
                    SizedBox(
                      height: 80,
                      width: 70,
                      child: Image.asset(
                        product.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),

                    // COLUMN NAME, DESC, PRICE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(product.nameProduct,
                                style: semiBold14BlueGrey),
                            Text(product.descProduct ?? '',
                                style: regular13BlueGrey45),
                          ],
                        ),
                        Text(product.price, style: bold16BlueGrey),
                      ],
                    ),
                  ],
                ),

                // COLUMN CLOSE AND ADD
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(Assets.assetsIconClose),
                    SafeArea(
                      child: Container(
                        height: 32,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: lightBlueSecondary,
                        ),
                        child: Consumer<TransactionProvider>(
                          builder: (context, transactionProvider, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: lightBlueThird,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: blue,
                                    ),
                                    onPressed: () =>
                                        transactionProvider.updateQuantity(product, false),
                                  ),
                                ),
                                Text(
                                  '${product.quantity}',
                                  style: light16BlackSofia,
                                ),
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: darkBlueAccent,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: white,
                                    ),
                                    onPressed: () =>
                                        transactionProvider.updateQuantity(product, true),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
