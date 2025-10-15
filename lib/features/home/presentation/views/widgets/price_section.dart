import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key, required this.oldPrice, required this.newPrice});
  final double oldPrice;
  final double newPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                Text(
                  '\$$oldPrice',
                  style: Styles.textStyle12.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '\$$newPrice',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            );
  }
}