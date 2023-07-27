import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEA1515),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/Ellipse.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                )),
                child: Image.asset(
                  'assets/images/burger.png',
                  width: 180,
                  height: 200,
                  // scale: 0.7,
                ),
              )),
          Expanded(
            flex: 6,
            child: Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
