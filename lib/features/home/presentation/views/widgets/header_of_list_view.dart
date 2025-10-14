import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HeaderOfListView extends StatelessWidget {
  const HeaderOfListView({super.key, required this.title, required this.discription});
  final String title;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(title, style: Styles.textStyle38),
                  Spacer(),
                  Text(
                    'See All',
                    style: Styles.textStyle14.copyWith(color: Colors.blue,fontSize: 12),
                  ),
                ],
              ),
              Text(
                discription,
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
            ],
          ),
        );
  }
}