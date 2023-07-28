import 'package:flutter/material.dart';

class AddsOnCard extends StatelessWidget {
  final String imgPath;
  const AddsOnCard({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 77,
      decoration: ShapeDecoration(color: const Color(0xFFEFEEEE), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(imgPath, width: 75, height: 77),
          Positioned(
            bottom: 10,
            right: -10,
            child: Container(
              width: 26,
              height: 26,
              // alignment: Alignment.center,
              decoration: const ShapeDecoration(color: Color(0xFF139738), shape: OvalBorder()),
              child: const Text('+', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFF9FAF8), fontSize: 18, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
