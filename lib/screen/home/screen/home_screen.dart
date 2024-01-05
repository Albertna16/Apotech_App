import 'package:apotech_app/components/navbar_component.dart';
import 'package:apotech_app/screen/home/provider/home_provider.dart';
import 'package:apotech_app/screen/home/screen/main_screen.dart';
import 'package:apotech_app/screen/profile/screen/profile_screen.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: customBottomNav(),
      body: Consumer<HomeProvider>(
        builder: (context, currentIndexProvider, child) {
          int currentIndex = currentIndexProvider.currentIndex;
          return IndexedStack(
            index: currentIndex,
            children: const [
              MainScreen(),
              Center(child: Text("Notif"),),
              Center(child: Text("Add"),),
              Center(child: Text("Box"),),
              ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}
