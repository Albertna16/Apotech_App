import 'package:apotech_app/data/models/size/size.dart';
import 'package:apotech_app/screen/product/provider/product_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sizeList.length,
            itemBuilder: (context, index) {
              final Size size = sizeList[index];
              return GestureDetector(
                onTap: (() {
                  productProvider.setCurrentSelected(index);
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: productProvider.currentSelected == index
                        ? darkYellow5
                        : const Color(0xFFF5F5F5),
                    border: Border.all(
                      color: productProvider.currentSelected == index
                          ? darkYellow
                          : const Color(0xFFF5F5F5),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        size.price,
                        style: productProvider.currentSelected == index
                            ? bold10DarkYellow
                            : bold10BlueGrey,
                      ),
                      Text(
                        size.pellets,
                        style: productProvider.currentSelected == index
                            ? regular12DarkYellow
                            : regular12BlueGrey75,
                      ),
                    ],
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
