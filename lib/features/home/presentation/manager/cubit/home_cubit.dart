import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/data/models/rating_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ProductModel> product = [
    ProductModel(
      id: '1',
      title: 'Blue T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage2,
      rating: Rating(count: 23, rate: 3),
    ),
    ProductModel(
      id: '3',
      title: 'Over Size',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '4',
      title: 'Polo T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '1',
      title: 'Blue T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage2,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '3',
      title: 'Over Size',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '4',
      title: 'Polo T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '1',
      title: 'Blue T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage2,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '3',
      title: 'Over Size',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: '4',
      title: 'Polo T Shirt',
      category: 'Man\'s Cloths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tempeClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
  ];

}

