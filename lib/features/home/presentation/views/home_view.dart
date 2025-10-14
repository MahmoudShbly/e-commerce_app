
import 'package:ecommerce_app/features/home/presentation/views/widgets/header_of_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/top_banner_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBannerSection(),
        SizedBox(height: 30),
        HeaderOfListView(title: 'New', discription: 'Super summer sale')
      ],
    );
  }
}
