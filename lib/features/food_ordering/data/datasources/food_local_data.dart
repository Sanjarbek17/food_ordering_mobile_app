import '../../domain/entities/cart.dart';
import '../../domain/entities/product.dart';

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