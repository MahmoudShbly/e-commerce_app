import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key, required this.oldPrice,  this.newPrice});
  final double oldPrice;
  final double? newPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                Text(
                  '\$$oldPrice',
                  style:newPrice!=null? Styles.textStyle12.copyWith(
                    color: Colors.grey,
                    decoration:TextDecoration.lineThrough,
                  ):Styles.textStyle14.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                Text(newPrice != null?
                  '\$$newPrice':'',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            );
  }
}