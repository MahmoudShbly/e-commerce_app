import 'package:ecommerce_app/core/utils/firebase_services.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final _service = FirebaseServices.instance;
  @override
  Stream<List<ProductModel>> productStream() {
    return _service.collectionStream<ProductModel>(
      collectionPath: 'products/',
      builder: (data, documentId) =>
          ProductModel.fromMap(data !, documentId),
    );
  }


}