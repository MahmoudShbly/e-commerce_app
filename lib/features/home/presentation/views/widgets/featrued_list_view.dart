import 'package:ecommerce_app/features/home/presentation/views/widgets/highlighted_product_card.dart';
import 'package:flutter/material.dart';

class FeatruedListView extends StatelessWidget {
  const FeatruedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: HighlightedProductCard(),
              );
            },
          ),
        );
  }
}