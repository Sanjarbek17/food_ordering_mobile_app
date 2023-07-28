import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFEFEEEE),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.redAccent,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 2,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.search,
              color: Color(0xFF7C7C7C),
              size: 30,
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xFF7C7C7C), fontSize: 20, fontWeight: FontWeight.w400)),
      style: const TextStyle(fontSize: 25),
      showCursor: false,
    );
  }
}
