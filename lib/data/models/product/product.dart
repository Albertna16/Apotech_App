import 'package:apotech_app/constant/assets_constants.dart';
import 'package:flutter/material.dart';

class Product {
  String imageAsset;
  String nameProduct;
  String price;
  String? rating;
  String? descProduct;
  String? promo;
  Color? promoColor;
  int? quantity;

  Product({
    required this.imageAsset,
    required this.nameProduct,
    required this.price,
    this.rating,
    this.descProduct,
    this.promo,
    this.promoColor,
    this.quantity,
  });
}

var productHomeList = [
  Product(
    imageAsset: Assets.assetsImageProduct1,
    nameProduct: "Accu-check Active Test Strip",
    price: "Rp 112.000",
    rating: "4.2",
  ),
  Product(
    imageAsset: Assets.assetsImageProduct2,
    nameProduct: "Omron HEM-8712 BP Monitor",
    price: "Rp 150.000",
    rating: "4.7",
  ),
];

var productCategoryList = [
  Product(
    imageAsset: Assets.assetsImageAccuCheckActiveTestStrip1,
    nameProduct: "Accu-check Active Test Strip",
    price: "Rp 112.000",
    rating: "4.2",
    promo: "SALE",
    promoColor: const Color(0xFFFF5A5A),
  ),
  Product(
    imageAsset: Assets.assetsImageOmronHem8712BpMonitor1,
    nameProduct: "Omron HEM-8712 BP Monitor",
    price: "Rp 150.000",
    rating: "4.2",
    promo: "15% OFF",
    promoColor: const Color(0xFFFFC618),
  ),
  Product(
    imageAsset: Assets.assetsImageAccuCheckActiveTestStrip2,
    nameProduct: "Accu-check Active Test Strip",
    price: "Rp 112.000",
    rating: "4.2",
  ),
  Product(
    imageAsset: Assets.assetsImageOmronHem8712BpMonitor2,
    nameProduct: "Omron HEM-8712 BP Monitor",
    price: "Rp 150.000",
    rating: "4.2",
  ),
];

var transactionList = [
  Product(
    imageAsset: Assets.assetsImageSugar,
    nameProduct: "Sugar free gold",
    descProduct: "bottle of 500 Pellets",
    price: "Rp 25.000",
    quantity: 1,
  ),
  Product(
    imageAsset: Assets.assetsImageVitamins,
    nameProduct: "Vitamin free gold",
    descProduct: "bottle of 500 Pellets",
    price: "Rp 18.000",
    quantity: 1,
  ),
];
