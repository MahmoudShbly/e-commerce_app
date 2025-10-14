import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatruedListView extends StatelessWidget {
  const FeatruedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: FeaturedListViewItem(),
              );
            },
          ),
        );
  }
}