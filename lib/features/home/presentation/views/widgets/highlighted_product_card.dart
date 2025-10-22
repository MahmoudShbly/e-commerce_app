import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/name_category_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/price_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/product_image_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/review_rating_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HighlightedProductCard extends StatelessWidget {
  const HighlightedProductCard({super.key, required this.product, required this.isNewList});
  final ProductModel product;
  final bool isNewList;
  

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.detailsView, extra: product);
      },
      child: AspectRatio(
        aspectRatio: 3 / 5,
      
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProductImageSection(imageUrl: product.imageUrl,isNewList: isNewList,discount: !isNewList?(((product.price-product.newPrice!)/product.price)*100).toInt():null, ),
              const SizedBox(height: 10),
              ReviewRatingSection(rating: product.rating,),
              const SizedBox(height: 5),
              NameCategorySection(category: product.category,name: product.title,),
              const SizedBox(height: 5),
      
              PriceSection(newPrice: product.newPrice,oldPrice: product.price,),
            ],
          ),
        ),
      ),
    );
  }
}
