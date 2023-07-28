import 'package:flutter/material.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/presentation/widgets/price_tag.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/presentation/widgets/red_button.dart';

import '../widgets/custom_list_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text('2 item in Cart', style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const CustomListTile(imgPath: 'assets/images/beef_burger.png'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF2E2D2D), fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                PriceTag(price: 40),
              ],
            ),
            const SizedBox(height: 10),
            RedButton(text: 'Checkout', onPressed: () {}),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Back to Menu', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF2E2D2D), fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w400, decoration: TextDecoration.underline)),
            )
          ],
        ),
      ),
    );
  }
}
