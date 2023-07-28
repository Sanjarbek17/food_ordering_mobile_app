import '../entities/cart_model.dart';
import '../entities/product_model.dart';

abstract class FoodRepository {
  Future<List<ProductModel>> getFoods();
  Future<List<CartModel>> getCart();
}