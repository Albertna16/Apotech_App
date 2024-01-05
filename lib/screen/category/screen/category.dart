import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/screen/category/widgets/all_product_widget.dart';
import 'package:apotech_app/screen/category/widgets/categories_detail_widget.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            Assets.assetsIconArrowBack,
          ),
        ),
        title: Text(
          "Diabetes Care",
          style: bold16BlueGrey,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(Assets.assetsImageCategoryIklan)),
              const SizedBox(height: 19),
              Text(
                "Diabetic Diet",
                style: semiBold16BlueGrey,
              ),
              const SizedBox(height: 19),
              const CategoriesDetailWidget(),
              const SizedBox(height: 15),
              Text(
                "All Products",
                style: semiBold16BlueGrey,
              ),
              const SizedBox(height: 24),
              const AllProductWidget(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
