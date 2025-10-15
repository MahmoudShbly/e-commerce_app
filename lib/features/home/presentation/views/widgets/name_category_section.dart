import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NameCategorySection extends StatelessWidget {
  const NameCategorySection({
    super.key,
    required this.name,
    required this.category,
  });
  final String name;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          category,
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
