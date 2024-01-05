import 'package:apotech_app/data/models/brands/brands.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandList.length,
        itemBuilder: (context, index) {
          final Brands brand = brandList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 126,
              width: 80,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.05),
                          blurRadius: 14,
                          offset:
                              const Offset(0, 6), 
                        ),
                      ],
                      color: whiteSecondary,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Center(
                      child: Image.asset(
                        brand.imageAsset,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    brand.nameBrand,
                    style: regular13BlueGrey,
                    textAlign: TextAlign.center,
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
