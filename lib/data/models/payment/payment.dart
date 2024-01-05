import 'package:apotech_app/constant/assets_constants.dart';

class Payment {
  String imageAsset;
  String namePayment;

  Payment({
    required this.imageAsset,
    required this.namePayment,
  });
}

var paymentList = [
  Payment(imageAsset: Assets.assetsImagePayment1, namePayment: "Credit card"),
  Payment(imageAsset: Assets.assetsImagePayment2, namePayment: "Paypal"),
  Payment(imageAsset: Assets.assetsImagePayment3, namePayment: "Google pay"),
  Payment(imageAsset: Assets.assetsImagePayment4, namePayment: "Apple pay"),
];
