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
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case menuScreen:
        return MaterialPageRoute(builder: (context) => const MenuScreen());
      case productScreen:
        return MaterialPageRoute(builder: (context) => const ProductPage());
      case cartScreen:
        return MaterialPageRoute(builder: (context) => const CartPage());
      default:
        throw const FormatException();
    }
  }
}
