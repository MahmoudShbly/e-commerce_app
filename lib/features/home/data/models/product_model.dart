import 'package:ecommerce_app/features/home/data/models/rating_model.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.oldPrice,
    required this.newPrice,
    required this.imageUrl,
    required this.rating,

  });
  final int id;
  final String name;
  final String category;
  final double oldPrice;
  final double newPrice;
  final String imageUrl;
  final Rating rating;
}


