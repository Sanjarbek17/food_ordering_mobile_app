import 'package:flutter/material.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/presentation/providers/bottom_index_provider.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => IndexbottomBar(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Evos',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: const Color(0xFFFF0202),
        ),
        initialRoute: RouteGenerator.splashScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
