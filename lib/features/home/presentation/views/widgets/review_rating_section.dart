import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/rating_model.dart';
import 'package:flutter/material.dart';

class ReviewRatingSection extends StatelessWidget {
  const ReviewRatingSection({super.key, required this.rating});
final Rating rating;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                for (int i = 0; i <5 ; i++)
                  Icon(
                    Icons.star,
                    size: 14,
                    color: i < rating.rate ? Colors.amber : Colors.grey,
                  ),
                Text(
                  '(${rating.count})',
                  style: Styles.textStyle12.copyWith(color: Colors.grey),
                ),
              ],
            );
  }
}