import 'package:food_ordering_mobile_app/features/food_ordering/domain/entities/cart.dart';

import 'cart_product.dart';

class CartModel extends Cart {
  CartModel({
    required int id,
    required List<CartProductModel> products,
    required int total,
    required int totalProducts,
  }) : super(
          id: id,
          products: products,
          total: total,
          totalProducts: totalProducts,
        );

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      products: json['products'].map<CartProductModel>((product) => CartProductModel.fromJson(product)).toList(),
      total: json['total'],
      totalProducts: json['totalProducts'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'products': products.map((product) => (product as CartProductModel).toJson()).toList(),
      'total': total,
      'totalProducts': totalProducts,
    };
  }
}
