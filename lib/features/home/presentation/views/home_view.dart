import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/data/repos/home_repo_impl.dart';
import 'package:ecommerce_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/header_of_list_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/top_banner_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final _homeRepo = HomeRepoImpl();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Column(
          children: <Widget>[
            TopBannerSection(),
            SizedBox(height: 30),
            HeaderOfListView(title: 'Sale', description: 'Super summer sale'),
            SizedBox(height: 20),

            StreamBuilder(
              stream: _homeRepo.productStream(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (snapshot.data==null|| snapshot.data!.isEmpty) {
                  return const Center(child: Text('No Data Available'));
                }
                List<ProductModel> products = snapshot.data!;
                List<ProductModel> discountedProducts = products
                    .where((product) => product.newPrice != null)
                    .toList();
                return FeaturedListView(products: discountedProducts);
              },
            ),
            SizedBox(height: 40),
            HeaderOfListView(
              title: 'New',
              description: 'You\'ve never seen it before!',
            ),
            SizedBox(height: 20),
            FeaturedListView(products: context.read<HomeCubit>().product),
          ],
        ),
      ),
    );
  }
}
