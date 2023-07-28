import 'package:flutter/material.dart';

import 'features/food_ordering/presentation/screens/screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String menuScreen = '/menu';
  static const String productScreen = '/product';
  static const String cartScreen = '/cart';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const SplashScreen(), transitionDuration: Duration.zero);
      case menuScreen:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const MenuScreen(), transitionDuration: Duration.zero);
      case productScreen:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const ProductPage(), transitionDuration: Duration.zero);
      case cartScreen:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const CartPage(), transitionDuration: Duration.zero);
      default:
        throw const FormatException();
    }
  }
}
