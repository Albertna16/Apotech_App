import 'package:apotech_app/constant/assets_constants.dart';
import 'package:flutter/material.dart';

class Categories {
  String imageAsset;
  String name;
  Color? color1;
  Color? color2;

  Categories({
    required this.imageAsset,
    required this.name,
    this.color1,
    this.color2,
  });
}

var categoriesHomeList = [
  Categories(
    imageAsset: Assets.assetsIconDental,
    name: "Dental",
    color1: const Color(0xFFFF9598),
    color2: const Color(0xFFFF70A7),
  ),
  Categories(
    imageAsset: Assets.assetsIconWellness,
    name: "Wellness",
    color1: const Color(0xFF19E5A5),
    color2: const Color(0xFF15BD92),
  ),
  Categories(
    imageAsset: Assets.assetsIconHomeo,
    name: "Homeo",
    color1: const Color(0xFFFFC06F),
    color2: const Color(0xFFFF793A),
  ),
  Categories(
    imageAsset: Assets.assetsIconEyecare,
    name: "Eye Care",
    color1: const Color(0xFF4DB7FF),
    color2: const Color(0xFF3E7DFF),
  ),
  Categories(
    imageAsset: Assets.assetsIconSkinhair,
    name: "Skin & Hair",
    color1: const Color(0xFF828282),
    color2: const Color(0xFF090F47),
  ),
];

var categoriesDetailList = [
  Categories(
    imageAsset: Assets.assetsImageSugar,
    name: "Sugar Substitute",
  ),
  Categories(
    imageAsset: Assets.assetsImageJuices,
    name: "Juices & Vinegars",
  ),
  Categories(
    imageAsset: Assets.assetsImageVitamins,
    name: "Vitamins Medicines",
  ),
];
