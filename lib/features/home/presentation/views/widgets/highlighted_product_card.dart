import 'package:ecommerce_app/features/home/presentation/views/widgets/name_category_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/price_discount_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/product_image_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/review_rating_section.dart';
import 'package:flutter/material.dart';

class HighlightedProductCard extends StatelessWidget {
  const HighlightedProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,

      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductImageSection(),
            const SizedBox(height: 10),
            ReviewRatingSection(),
            const SizedBox(height: 5),
            NameCategorySection(),
                        const SizedBox(height: 5),

            PriceDiscuontSection()
      
            
          ],
        ),
      ),
    );
  }
}
