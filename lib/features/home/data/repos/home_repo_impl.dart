import 'package:ecommerce_app/core/utils/firebase_services.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final _service = FirebaseServices.instance;
  @override
  Stream<List<ProductModel>> salesProductStream() {
    return _service.collectionStream<ProductModel>(
      collectionPath: 'products/',
      builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
      queryBuilder: (query) => query.where('newPrice',isNull: false),
    );
  }

  @override
  Stream<List<ProductModel>> newProductStream() {
    return _service.collectionStream(
      collectionPath: 'products/',
      builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
      queryBuilder: (query) => query.where('newPrice',isNull: true),
    );
  }
}
