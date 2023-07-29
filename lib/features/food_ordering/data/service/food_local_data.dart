import 'dart:convert';

import 'package:food_ordering_mobile_app/features/food_ordering/data/model/cart_model.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/data/model/product_model.dart';

import '../../../../core/exception.dart';
import '../../domain/entities/cart.dart';
import '../../domain/entities/product.dart';
import 'package:shared_preferences/shared_preferences.dart';
abstract class FoodLocalDataSource {
  /// Gets the cached [List<Product>] which was gotten the last time
  /// Throws [CacheException] if no cached data is present.
  Future<List<Product>> getFoods();

  /// Gets the cached [List<Cart>] which was gotten the last time
  /// Throws [CacheException] if no cached data is present.
  Future<List<Cart>> getCart();

  /// Cache the [List<Product>] to be used later
  Future<void> cacheFoods(List<Product> products);

  /// Cache the [List<Cart>] to be used later
  Future<void> cacheCart(List<Cart> cart);
}

class FoodLocalDataSourceImpl implements FoodLocalDataSource {
  FoodLocalDataSourceImpl({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<List<Cart>> getCart() {
    final jsonString = sharedPreferences.getString('CART');
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return Future.value(jsonList.map((e) => CartModel.fromJson(e)).toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Product>> getFoods() {
    final jsonString = sharedPreferences.getString('FOODS');
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return Future.value(jsonList.map((e) => ProductModel.fromJson(e)).toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheCart(List<Cart> cart) {
    return sharedPreferences.setString(
      'CART',
      json.encode(cart.map((e) => (e as CartModel).toJson()).toList()),
    );
  }

  @override
  Future<void> cacheFoods(List<Product> products) {
    return sharedPreferences.setString(
      'FOODS',
      json.encode(products.map((e) =>  (e as CartModel).toJson()).toList()),
    );
  }
}