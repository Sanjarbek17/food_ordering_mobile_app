import 'package:flutter/material.dart';

Row appBar(double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const Text(
        'Menu',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w500,
        ),
      ),
      CircleAvatar(
        radius: width * 0.07,
        backgroundImage: const AssetImage('assets/images/profile.jpg'),
      )
    ],
  );
}
