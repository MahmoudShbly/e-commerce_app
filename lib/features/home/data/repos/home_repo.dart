import 'package:ecommerce_app/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  Stream<List<ProductModel>> salesProductStream();
  Stream<List<ProductModel>> newProductStream();

}

