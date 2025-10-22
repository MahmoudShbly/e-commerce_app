import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Text(product.title),
    );
  }
}