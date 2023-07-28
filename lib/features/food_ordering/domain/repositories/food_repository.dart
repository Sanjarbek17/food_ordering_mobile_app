import 'package:food_ordering_mobile_app/features/food_ordering/domain/entities/cart_model.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/domain/entities/product_model.dart';

abstract class FoodRepository {
  Future<List<ProductModel>> getFoods();
  Future<List<CartModel>> getCart();
}