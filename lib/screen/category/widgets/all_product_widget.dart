import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/data/models/product/product.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class AllProductWidget extends StatelessWidget {
  const AllProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 13,
        mainAxisSpacing: 17,
        childAspectRatio: 1 / 1.5,
      ),
      controller: ScrollController(keepScrollOffset: false),
      itemCount: productCategoryList.length,
      itemBuilder: (context, index) {
        final Product product = productCategoryList[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RoutesNavigation.productScreen,
              arguments: product,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: whiteForth),
              color: white,
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 158,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteThird,
                        borderRadius: BorderRadius.circular(10),
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
                            width: 50,
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
                                    size: 20,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    product.rating ?? '',
                                    style: bold13White,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ClipPath(
                  clipper: _Triangle(),
                  child: Container(
                    height: 65,
                    width: 65,
                    padding: const EdgeInsets.only(top: 15, left: 3, right: 5),
                    decoration: BoxDecoration(
                      color: product.promoColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Transform.rotate(
                        angle: -44 * (3.141592653589793 / 180),
                        child: Text(
                          product.promo ?? '',
                          style: bold12White,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
