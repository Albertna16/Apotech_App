import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/home/provider/home_provider.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget customBottomNav() {
  return Container(
    color: Colors.white,
    child: Builder(
      builder: (BuildContext context) {
        return Consumer<HomeProvider>(
          builder: (context, homeProvider, child) {
            return ClipRRect(
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                currentIndex: homeProvider.currentIndex,
                onTap: (value) {
                  homeProvider.updateIndex(value);
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.assetsIconHomeNavbar,
                      width: 24,
                      fit: BoxFit.cover,
                      color: homeProvider.currentIndex == 0 ? blue : blueGrey45,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.assetsIconNotifNavbar,
                      width: 24,
                      fit: BoxFit.cover,
                      color: homeProvider.currentIndex == 1 ? blue : blueGrey45,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6), color: blue),
                      child: Image.asset(
                        Assets.assetsIconAddNavbar,
                        width: 50,
                        color: homeProvider.currentIndex == 2 ? white : white,
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.assetsIconBoxNavbar,
                      width: 24,
                      fit: BoxFit.cover,
                      color: homeProvider.currentIndex == 3 ? blue : blueGrey45,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.assetsIconUserNavbar,
                      width: 24,
                      fit: BoxFit.cover,
                      color: homeProvider.currentIndex == 4 ? blue : blueGrey45,
                    ),
                    label: '',
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
