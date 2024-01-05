import 'package:apotech_app/constant/assets_constants.dart';

class Brands {
  String imageAsset;
  String nameBrand;

  Brands({
    required this.imageAsset,
    required this.nameBrand,
  });
}

var brandList = [
  Brands(
    imageAsset: Assets.assetsImageBrand1,
    nameBrand: "Himalaya Wellness",
  ),
  Brands(
    imageAsset: Assets.assetsImageBrand2,
    nameBrand: "Accu-Chek",
  ),
  Brands(
    imageAsset: Assets.assetsImageBrand3,
    nameBrand: "Vlcc",
  ),
  Brands(
    imageAsset: Assets.assetsImageBrand4,
    nameBrand: "Protinex",
  ),
];
