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

   Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'oldPrice': oldPrice,
      'newPrice': newPrice,
      'imageUrl': imageUrl,
      'rating': rating.toMap(),
    };
  }

   factory ProductModel.fromMap(Map<String, dynamic> map , String documentId) {
    return ProductModel(
      id: int.parse(documentId),
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      oldPrice: (map['oldPrice'] ?? 0).toDouble(),
      newPrice: (map['newPrice'] ?? 0).toDouble(),
      imageUrl: map['imageUrl'] ?? '',
      rating: Rating.fromMap(map['rating']), 
    );
  }
}



