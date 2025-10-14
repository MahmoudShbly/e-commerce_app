
import 'package:ecommerce_app/features/home/presentation/views/widgets/featrued_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/header_of_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/top_banner_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: <Widget>[
            TopBannerSection(),
            SizedBox(height: 30),
            HeaderOfListView(title: 'Sale', discription: 'Super summer sale'),
            SizedBox(
              height: 20,
            ),
        
            FeatruedListView(),
            SizedBox(height: 40),
            HeaderOfListView(title: 'New', discription: 'You\'ve never seen it before!'),
            SizedBox(
              height: 20,
            ),
            FeatruedListView(),
            
            
          ],
        ),
      ),
    );
  }
}
