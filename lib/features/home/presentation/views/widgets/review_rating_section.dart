import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ReviewRatingSection extends StatelessWidget {
  const ReviewRatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                for (int i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    size: 14,
                    color: i < 4 ? Colors.amber : Colors.grey,
                  ),
                Text(
                  '(23)',
                  style: Styles.textStyle12.copyWith(color: Colors.grey),
                ),
              ],
            );
  }
}