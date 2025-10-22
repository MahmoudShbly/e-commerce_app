import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key, required this.imageUrl,required this.isNewList,  this.discount,});
  final String imageUrl;
  final bool isNewList;
  final int? discount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        SizedBox(
          height: 150,
          width: 150,
          child: Image.network(imageUrl, fit: BoxFit.fitHeight),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 4,
                  offset: Offset(-2, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color:isNewList? Colors.black: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                isNewList? 'New':
                '$discount % Off',
                style: Styles.textStyle12.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 110,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline, size: 18, color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
