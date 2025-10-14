import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,

      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[],
              )
            ],
          ),
        ),
      ),
    );
  }
}
