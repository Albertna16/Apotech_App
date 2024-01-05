import 'package:apotech_app/data/models/product/product.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productHomeList.length,
        itemBuilder: (context, index) {
          final Product product = productHomeList[index];
          return Container(
            width: 180,
            margin: const EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.03),
                  blurRadius: 13,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 154,
                  width: 180,
                  decoration: BoxDecoration(
                    color: greySecondary,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Image.asset(product.imageAsset),
                  ),
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    product.nameProduct,
                    style: regular13BlueGrey,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.price,
                        style: bold14BlueGrey,
                      ),
                      Container(
                        height: 24,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: yellow,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: white,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product.rating ?? '',
                                style: light13WhiteSofia,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
