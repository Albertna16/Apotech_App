import 'package:apotech_app/constant/assets_constants.dart';

class Profile {
  String iconAsset;
  String title;

  Profile({
    required this.iconAsset,
    required this.title,
  });
}

var profileList = [
  Profile(
    iconAsset: Assets.assetsIconPrivateAccount,
    title: "Private Account",
  ),
  Profile(
    iconAsset: Assets.assetsIconConsults,
    title: "My Consults",
  ),
  Profile(
    iconAsset: Assets.assetsIconOrder,
    title: "My Orders",
  ),
  Profile(
    iconAsset: Assets.assetsIconBilling,
    title: "Billing",
  ),
  Profile(
    iconAsset: Assets.assetsIconFaq,
    title: "Faq",
  ),
  Profile(
    iconAsset: Assets.assetsIconSetting,
    title: "Settings",
  ),
];
