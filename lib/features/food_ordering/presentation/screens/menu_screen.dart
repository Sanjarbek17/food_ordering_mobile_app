import 'package:flutter/material.dart';
import 'package:food_ordering_mobile_app/routes.dart';

import '../widgets/appBar_home.dart';
import '../widgets/bottomBar.dart';
import '../widgets/catalog_menu.dart';
import '../widgets/promotions_home.dart';
import '../widgets/searchbar_home.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
              child: listView(height: height, lst: catalogList),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Promotions', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
            ),
            Promotions(height: height),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text('Popular', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              popular(height, width, catalogList, 1, 'Beff Burger', '\$30'),
              const SizedBox(width: 20),
              popular(height, width, catalogList, 2, 'Chease pizza', '\$32'),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Container popular(double height, double width, List<dynamic> catalogList, index, name, cost) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xDBEFEEEE), borderRadius: BorderRadius.circular(20)),
      height: height * 0.24,
      width: width * 0.40,
      child: Column(children: [
        InkWell(
          onTap: () => Navigator.pushNamed(context, RouteGenerator.productScreen),
          child: SizedBox(
            height: height * 0.18,
            child: Image.asset(catalogList[index]['picture']),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
                  Text(cost, style: const TextStyle(color: Colors.amber)),
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 15,
                child: Icon(Icons.add, size: 15),
              )
            ],
          ),
        )
      ]),
    );
  }
}
