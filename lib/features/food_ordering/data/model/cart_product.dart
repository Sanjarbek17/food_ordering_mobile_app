import 'package:food_ordering_mobile_app/features/food_ordering/domain/entities/cart_product.dart';

class CartProductModel extends CartProduct {
  CartProductModel({
    required String id,
    required String title,
    required int price,
    required int quantity,
    required int total,
    required String thumbNail,
  }) : super(
          id: id,
          title: title,
          price: price,
          quantity: quantity,
          total: total,
          thumbNail: thumbNail,
        );

  factory CartProductModel.fromJson(Map<String, dynamic> json) {
    return CartProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      quantity: json['quantity'],
      total: json['total'],
      thumbNail: json['thumbNail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'quantity': quantity,
      'total': total,
      'thumbNail': thumbNail,
    };
  }
}
