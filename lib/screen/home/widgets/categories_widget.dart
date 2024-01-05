import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/data/models/categories/categories.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesHomeList.length,
        itemBuilder: (context, index) {
          final Categories categories = categoriesHomeList[index];
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RoutesNavigation.categoryScreen);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.05),
                    blurRadius: 23,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            categories.color1 ?? Colors.white,
                            categories.color2 ?? Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          categories.imageAsset,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      categories.name,
                      style: light11BlueGrey95,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
