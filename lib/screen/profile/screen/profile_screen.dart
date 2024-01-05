import 'package:apotech_app/constant/assets_constants.dart';
import 'package:apotech_app/data/models/profile/profile.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "My Profile",
          style: bold16BlueGrey,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: white),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF091C3F).withOpacity(0.08),
                        blurRadius: 6,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      Assets.assetsImageAlbert,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Lorem Ipsum",
                      style: bold20BlueGrey,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Welcome to Apotech",
                      style: regular14BlueGrey45Hanken,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Divider(
                height: 1,
                color: darkBlue8,
              ),
            ),
            itemCount: profileList.length,
            itemBuilder: (context, index) {
              final Profile profile = profileList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: (){},
                  child: ListTile(
                    leading: Image.asset(profile.iconAsset),
                    title: Text(
                      profile.title,
                      style: medium15DarkBlue75,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: blueGrey,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
