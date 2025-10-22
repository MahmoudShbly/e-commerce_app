import 'package:ecommerce_app/features/home/data/models/rating_model.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
     this.newPrice,
    required this.imageUrl,
    required this.rating,

  });
  final String id;
  final String title;
  final String category;
  final double price;
  final double? newPrice;
  final String imageUrl;
  final Rating rating;

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'oldPrice': price,
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
      price: (map['oldPrice'] ?? 0).toDouble(),
      newPrice:map['newPrice']!=null? (map['newPrice']).toDouble():null,
      imageUrl: map['imageUrl'] ?? '',
      rating: Rating.fromMap(map['rating']??{'count':0,'rate':0}), 
    );
  }
}



