import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/adds_on_card.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEA1515),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Ellipse.png'), fit: BoxFit.fitWidth, alignment: Alignment.topCenter)),
                child: Image.asset('assets/images/burger.png', width: 180, height: 200),
              )),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 52,
                          decoration: ShapeDecoration(color: const Color(0xFFFF0202), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('assets/icons/start.svg'),
                              const Text('4.8', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Text('\$30', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFDFA308), fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Beef burger', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('assets/icons/minus.svg'),
                            const SizedBox(width: 10),
                            const Text('1', textAlign: TextAlign.center, style: TextStyle(color: Color(0xA0E91414), fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                            const SizedBox(width: 10),
                            SvgPicture.asset('assets/icons/plus.svg'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text('Big juicy beef burger with cheese, lettuce, tomato, and special sauce!', style: TextStyle(color: Color(0xFF838181), fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text('Add Ons', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF424242), fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddsOnCard(imgPath: 'assets/images/cheese.png'),
                        AddsOnCard(imgPath: 'assets/images/pivo.png'),
                        AddsOnCard(imgPath: 'assets/images/soup.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)), primary: const Color(0xFFFF0202), minimumSize: const Size(350, 60)),
                      child: const Text('Add to Cart', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
