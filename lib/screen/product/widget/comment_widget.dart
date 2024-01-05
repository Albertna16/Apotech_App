import 'package:apotech_app/data/models/comment/comment.dart';
import 'package:apotech_app/theme/color_theme.dart';
import 'package:apotech_app/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        controller: ScrollController(keepScrollOffset: false),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: commentList.length,
        itemBuilder: (context, index) {
          final Comment comment = commentList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(comment.name, style: regular14BlueGrey),
                    Text(comment.date, style: regular14BlueGrey45),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: yellow,
                      size: 12,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      comment.rating,
                      style: regular13BlueGrey45,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(comment.message, style: light14BlueGrey45,)
              ],
            ),
          );
        },
      ),
    );
  }
}
