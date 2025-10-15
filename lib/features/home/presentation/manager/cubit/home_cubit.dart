import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/data/models/rating_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ProductModel> product = [
    ProductModel(
      id: 1,
      name: 'Blue T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage2,
      rating: Rating(count: 23, rate: 3),
    ),
    ProductModel(
      id: 3,
      name: 'Over Size',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 4,
      name: 'Polo T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 1,
      name: 'Blue T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage2,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 3,
      name: 'Over Size',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 4,
      name: 'Polo T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 1,
      name: 'Blue T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage2,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 3,
      name: 'Over Size',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage3,
      rating: Rating(count: 23, rate: 4),
    ),
    ProductModel(
      id: 4,
      name: 'Polo T Shirt',
      category: 'Man\'s Colths',
      oldPrice: 68,
      newPrice: 55,
      imageUrl: MyAssets.tepmClothsImage4,
      rating: Rating(count: 23, rate: 4),
    ),
  ];
}
