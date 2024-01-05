import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/home/provider/main_provider.dart';
import 'package:apotech_app/screen/home/widgets/brands_widget.dart';
import 'package:apotech_app/screen/home/widgets/categories_widget.dart';
import 'package:apotech_app/screen/home/widgets/header_widget.dart';
import 'package:apotech_app/screen/home/widgets/product_widget.dart';
import 'package:apotech_app/screen/home/widgets/slider_ads_widget.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Provider.of<MainProvider>(context, listen: false).initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: lightBlue,
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [blueSecondary, blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Image.asset(
                Assets.assetsImageDecorationEllipseHome,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                const SizedBox(height: 16),
                const HeaderWidget(),
                const SizedBox(height: 24),
                Text(
                  "Hi, Lorem",
                  style: bold24White,
                ),
                const SizedBox(height: 8),
                Text(
                  "Welcome to Apotexh",
                  style: light16White,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: const Color(0xFF000000).withOpacity(0.07),
                      ),
                      borderRadius: BorderRadius.circular(56),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search,
                        color: blueGrey45,
                      ),
                    ),
                    hintText: "Search Medicine & Healthcare products",
                    hintStyle: regular13BlueGrey45,
                    contentPadding: const EdgeInsets.fromLTRB(200, 15, 0, 15),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Top Categories",
                  style: semiBold16BlueGrey,
                ),
                const SizedBox(height: 8),
                const CategoriesWidget(),
                const SizedBox(height: 24),
                const SliderAdsWidget(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Deals of the Day",
                      style: semiBold16BlueGrey,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "More",
                        style: regular14Blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const ProductWidget(),
                const SizedBox(height: 24),
                Text(
                  "Featured Brands",
                  style: semiBold16BlueGrey,
                ),
                const SizedBox(height: 16),
                const BrandWidget(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
