import 'package:food_ordering_mobile_app/features/food_ordering/data/model/product_model.dart';

import '../../domain/entities/cart.dart';
import '../../domain/entities/product.dart';
import 'package:dio/dio.dart';

import '../model/cart_model.dart';

abstract class FoodRemoteDataSource {
  /// Gets data from api endpoint
  /// Throws [ServerException] if no cached data is present.
  Future<List<Product>> getFoods();

  /// Gets data from api endpoint
  /// Throws [ServerException] if no cached data is present.
  Future<List<Cart>> getCart();
}

class FoodRemoteDataSourceImpl implements FoodRemoteDataSource {
  FoodRemoteDataSourceImpl({required this.dio});

  final Dio dio;
  @override
  Future<List<Cart>> getCart() async {
    Response res = await dio.get('carts/1');
    return (res.data['products'] as List).map((e) => CartModel.fromJson(e)).toList();
  }

  @override
  Future<List<Product>> getFoods() async {
    Response res = await dio.get('products/category/groceries');
    return (res.data['products'] as List).map((e) => ProductModel.fromJson(e)).toList();
  }
}
