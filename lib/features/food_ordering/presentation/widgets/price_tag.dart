
import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final int price;
  const PriceTag({
    super.key, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Text('\$$price', textAlign: TextAlign.center, style: const TextStyle(color: Color(0xFFDFA308), fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w600));
  }
}