import 'package:flutter/material.dart';

Stack promotions(double height) {
  return Stack(clipBehavior: Clip.none, children: [
    Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-3.00, -0.05),
            end: Alignment(8, 0.15),
            colors: [
              Color(0xCCFF0202),
              Color(0x99FD3131),
              Color(0x00E0B7B7),
              Color(0xCCED6B6B)
            ],
          ),
          borderRadius: BorderRadius.circular(20)),
      height: height * 0.16,
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today\'s Offer',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Text(
              'Free box 3 menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            'on all orders above \$150',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
    Positioned(
        right: 15,
        top: -50,
        child: SizedBox(
          height: height * 0.16,
          width: height * 0.16,
          child: Image.asset(
            "assets/images/promotions.png",
            fit: BoxFit.cover,
          ),
        ))
  ]);
}
