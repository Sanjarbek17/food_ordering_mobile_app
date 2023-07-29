import 'package:food_ordering_mobile_app/features/food_ordering/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required int id,
    required String title,
    required int price,
    required double rating,
    required String thumbNail,
  }) : super(
          id: id,
          title: title,
          price: price,
          rating: rating,
          thumbNail: thumbNail,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      rating: json['rating'],
      thumbNail: json['thumbNail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'thumbNail': thumbNail,
    };
  }
}
