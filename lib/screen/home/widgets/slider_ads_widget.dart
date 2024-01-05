import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/home/provider/main_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderAdsWidget extends StatelessWidget {
  const SliderAdsWidget({super.key});

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Provider.of<MainProvider>(context, listen: false).currentIndex ==
                index
            ? blue
            : blueGrey15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Consumer<MainProvider>(
        builder: (context, mainProvider, child) {
          return PageView.builder(
            controller: mainProvider.onBoaringController,
            itemCount: 3,
            onPageChanged: (int index) {
              mainProvider.setCurrentIndex(index);
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          Assets.assetsImageCategoryIklan,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                    ),
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
