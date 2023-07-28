import 'cart_product.dart';

class Cart {
  final int id;
  final List<CartProduct> products;
  final int total;
  final int totalProducts;

  Cart({
    required this.id,
    required this.products,
    required this.total,
    required this.totalProducts,
  });
}
