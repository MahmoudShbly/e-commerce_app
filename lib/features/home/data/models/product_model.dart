import 'package:ecommerce_app/features/home/data/models/rating_model.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.oldPrice,
     this.newPrice,
    required this.imageUrl,
    required this.rating,

  });
  final String id;
  final String title;
  final String category;
  final double oldPrice;
  final double? newPrice;
  final String imageUrl;
  final Rating rating;

   Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'oldPrice': oldPrice,
      'newPrice': newPrice,
      'imageUrl': imageUrl,
      'rating': rating.toMap(),
    };
  }

   factory ProductModel.fromMap(Map<String, dynamic> map , String documentId) {
    return ProductModel(
      id: documentId,
      title: map['title'] ?? '',
      category: map['category'] ?? '',
      oldPrice: (map['oldPrice'] ?? 0).toDouble(),
      newPrice: (map['newPrice']).toDouble(),
      imageUrl: map['imageUrl'] ?? '',
      rating: Rating.fromMap(map['rating']??{'count':0,'rate':0}), 
    );
  }
}



