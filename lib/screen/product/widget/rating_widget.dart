import 'package:apotech_app/data/models/rating/rating.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final String productRating;
  const RatingWidget({Key? key, required this.productRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(productRating, style: semiBold33Black),
                    const SizedBox(width: 10),
                    Icon(Icons.star, color: yellow),
                  ],
                ),
                Text("932 Ratings and 257 Reviews", style: regular14BlueGrey45),
              ],
            ),
          ),
          VerticalDivider(
            color: black10,
          ),
          Flexible(
            flex: 2,
            child: ListView.builder(
              controller: ScrollController(keepScrollOffset: false),
              itemCount: ratingList.length,
              itemBuilder: (context, index) {
                final Rating data = ratingList[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      data.rating,
                      style: regular14BlueGrey45,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFD040),
                      size: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 3,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [blue, black10],
                          stops: [
                            data.percentActive / 100,
                            data.percentActive / 100
                          ],
                        ),
                      ),
                    ),
                    Text(
                      '${data.percentActive.toString()}%',
                      style: regular14BlueGrey45,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
