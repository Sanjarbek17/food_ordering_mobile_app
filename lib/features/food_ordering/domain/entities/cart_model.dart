import 'cart_product.dart';

class CartModel {
  final int id;
  final List<CartProduct> products;
  final int total;
  final int totalProducts;

  CartModel({
    required this.id,
    required this.products,
    required this.total,
    required this.totalProducts,
  });
}
