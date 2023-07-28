import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    required this.width,
    super.key,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
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
}
