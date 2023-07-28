import '../../domain/entities/cart.dart';
import '../../domain/entities/product.dart';

abstract class FoodRemoteDataSource {
  /// Gets data from api endpoint
  /// Throws [ServerException] if no cached data is present.
  Future<List<Product>> getFoods();

  /// Gets data from api endpoint
  /// Throws [ServerException] if no cached data is present.
  Future<List<Cart>> getCart();
}