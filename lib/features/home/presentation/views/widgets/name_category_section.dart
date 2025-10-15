import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NameCategorySection extends StatelessWidget {
  const NameCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
              'man\'s colths',
              style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600,color: Colors.grey),
            ),
      const SizedBox(
        height: 5,
      ),
            Text(
              'Blue T Shirt',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
      ],
    );
  }
}