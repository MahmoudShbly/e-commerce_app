import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/highlighted_product_card.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key, required this.products, required this.isNewList});
  final List<ProductModel> products;
  final bool isNewList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: HighlightedProductCard(product: products[index],isNewList: isNewList,),
              );
            },
          ),
        );
  }
}