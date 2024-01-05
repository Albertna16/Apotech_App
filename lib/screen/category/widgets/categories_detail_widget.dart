import 'package:apotech_app/data/models/categories/categories.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class CategoriesDetailWidget extends StatelessWidget {
  const CategoriesDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 162,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesDetailList.length,
        itemBuilder: (context, index) {
          final Categories categories = categoriesDetailList[index];
          return Container(
            width: 110,
            margin: const EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              color: whiteThird,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 99,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Image.asset(categories.imageAsset),
                  ),
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    categories.name,
                    style: regular13BlueGrey,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}
