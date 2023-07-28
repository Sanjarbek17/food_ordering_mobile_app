import '../entities/cart.dart';
import '../entities/product.dart';

abstract class FoodRepository {
  Future<List<Product>> getFoods();
  Future<List<Cart>> getCart();
}