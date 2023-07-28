import 'package:flutter/material.dart';
import 'package:food_ordering_mobile_app/routes.dart';
import 'package:provider/provider.dart';

import '../providers/bottom_index_provider.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List page = [
    RouteGenerator.menuScreen,
    RouteGenerator.cartScreen,
    RouteGenerator.cartScreen,
    RouteGenerator.menuScreen,
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.read<IndexbottomBar>().selectedIndex,
      onTap: (value) {
        context.read<IndexbottomBar>().selectedIndex = value;
        Navigator.pushReplacementNamed(context, page[value]);
      },
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(color: Colors.red, size: 35),
      unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 35),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: " "),
      ],
    );
  }
}
