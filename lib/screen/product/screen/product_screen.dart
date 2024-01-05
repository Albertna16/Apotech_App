import 'package:apotech_app/components/button_components.dart';
import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/constant/routes_constant.dart';
import 'package:apotech_app/data/models/product/product.dart';
import 'package:apotech_app/screen/product/provider/product_provider.dart';
import 'package:apotech_app/screen/product/widget/comment_widget.dart';
import 'package:apotech_app/screen/product/widget/rating_widget.dart';
import 'package:apotech_app/screen/product/widget/size_widget.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false).initial();
    super.initState();
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Provider.of<ProductProvider>(context).currentIndex == index
            ? blue
            : blueGrey15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Product?;
    final Product? detailProduct = args;

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
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(Assets.assetsIconBox),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {},
            child: Image.asset(Assets.assetsIconNotification),
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(detailProduct?.nameProduct ?? '', style: bold22BlueGrey),
              const SizedBox(height: 4),
              Text("Etiam mollis metus non purus ", style: regular14BlueGrey45),
              const SizedBox(height: 16),
              SizedBox(
                height: 140,
                width: double.infinity,
                child: Consumer<ProductProvider>(
                  builder: (context, productProvider, child) {
                    return PageView.builder(
                      controller: productProvider.onBoaringController,
                      itemCount: 3,
                      onPageChanged: (int index) {
                        productProvider.setCurrentIndex(index);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 140,
                          width: double.infinity,
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                          decoration: BoxDecoration(
                            color: whiteGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(detailProduct?.imageAsset ?? ''),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(detailProduct?.price ?? '', style: bold18BlueGrey),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RoutesNavigation.transactionScreen);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add_box_outlined, color: semiLightBlue),
                        const SizedBox(width: 10),
                        Text("Add to cart", style: regular14SemiLightBlue),
                      ],
                    ),
                  ),
                ],
              ),
              Text("Etiam mollis", style: regular14BlueGrey45),
              const SizedBox(height: 10),
              Divider(color: black10),
              const SizedBox(height: 10),
              Text("Package Size", style: semiBold16BlueGrey),
              const SizedBox(height: 16),
              const SizeWidget(),
              const SizedBox(height: 20),
              Text("Product Details", style: semiBold16BlueGrey),
              const SizedBox(height: 8),
              Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                style: light14BlueGrey45,
              ),
              const SizedBox(height: 24),
              Text("Rating and Reviews", style: semiBold16BlueGrey),
              const SizedBox(height: 14),
              RatingWidget(productRating: detailProduct?.rating ?? ''),
              const SizedBox(height: 16),
              const CommentWidget(),
              const SizedBox(height: 30),
              Center(
                child: ButtonComponent(
                  title: Text("GO TO CART", style: bold16White),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RoutesNavigation.transactionScreen);
                  },
                  backgroundColor: blue,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
