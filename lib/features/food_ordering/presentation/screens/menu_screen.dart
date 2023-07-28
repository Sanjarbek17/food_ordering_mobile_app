import 'package:flutter/material.dart';

import '../widgets/appBar_home.dart';
import '../widgets/catalog_menu.dart';
import '../widgets/promotions_home.dart';
import '../widgets/searchbar_home.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    List catalogList = [
      {'picture': 'assets/images/splash.png', 'name': 'All'},
      {'picture': 'assets/images/burger.png', 'name': 'Burger'},
      {'picture': 'assets/images/pizza.png', 'name': 'Pizza'},
      {'picture': 'assets/images/desert.png', 'name': 'Desert'},
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07, vertical: width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(width: width),
            const SizedBox(
              height: 5,
            ),
            Form(child: MySearchBar()),
            SizedBox(
              height: height * 0.16,
              child: listView(
                height: height,
                lst: catalogList,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Promotions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
            Promotions(height: height),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Popular',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              popular(height, width, catalogList, 1, 'Beff Burger', '\$30'),
              const SizedBox(
                width: 20,
              ),
              popular(height, width, catalogList, 2, 'Chease pizza', '\$32'),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  Container popular(double height, double width, List<dynamic> catalogList, index, name, cost) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xDBEFEEEE), borderRadius: BorderRadius.circular(20)),
      height: height * 0.24,
      width: width * 0.40,
      child: Column(children: [
        SizedBox(
          height: height * 0.18,
          child: Image.asset(catalogList[index]['picture']),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    cost,
                    style: const TextStyle(color: Colors.amber),
                  )
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 15,
                child: Icon(
                  Icons.add,
                  size: 15,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }

  BottomNavigationBar bottomBar() {
    return BottomNavigationBar(
      currentIndex: currentSelect,
      onTap: (value) {
        setState(() {
          currentSelect = value;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(color: Colors.red, size: 35),
      unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 35),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: " ",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: " "),
      ],
    );
  }
}
