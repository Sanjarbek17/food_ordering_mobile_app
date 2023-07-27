import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'plus_or_minus.dart';
import 'price_tag.dart';

class CustomListTile extends StatelessWidget {
  final String imgPath;

  const CustomListTile({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      height: 130,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(color: const Color(0xFFEFEEEE), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      child: Image.asset(imgPath, width: 80, height: 80),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Beef burger', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                        PriceTag(price: 20),
                        MinusOrPlus(),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset('assets/icons/close.svg'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
