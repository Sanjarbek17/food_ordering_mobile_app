import 'package:flutter/material.dart';

import 'features/food_ordering/presentation/screens/cart_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evos',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF0202),
      ),
      home: const CartPage(),
    );
  }
}
