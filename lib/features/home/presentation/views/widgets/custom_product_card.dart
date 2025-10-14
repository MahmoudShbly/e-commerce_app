import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HighlightedProductCard extends StatelessWidget {
  const HighlightedProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3 / 4,

      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  SizedBox(
                    
                    height: 150,
                    width: 150,
                    
                    child: Image.network(MyAssets.tepmClothsImage2,fit: BoxFit.fill,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.4),
                          blurRadius: 4,
                          offset: Offset(-2, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '-20% ',
                        style: Styles.textStyle12.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 100,
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
                        border: BoxBorder.all(color: Colors.grey.shade200),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          size: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
                  for (int i = 0; i < 5; i++)
                    Icon(
                      Icons.star,
                      size: 16,
                      color: i < 4 ? Colors.amber : Colors.grey,
                    ),
                  Text(
                    ' (23)',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              Text(
                'Blue T Shirt',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),

              Row(
                children: <Widget>[
                  Text(
                    '\$68.00',
                    style: Styles.textStyle14.copyWith(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
