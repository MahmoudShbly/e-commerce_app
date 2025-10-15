import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceDiscuontSection extends StatelessWidget {
  const PriceDiscuontSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                Text(
                  '\$68.00',
                  style: Styles.textStyle12.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '\$55.00',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            );
  }
}