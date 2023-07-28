import 'package:flutter/material.dart';
import 'package:food_ordering_mobile_app/features/food_ordering/presentation/screens/menu_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(13, 12),
          end: Alignment(15, 12),
          colors: [Color(0xD8FF0202), Color(0xFFFF0202), Color(0xD8FE1A1A)],
        )),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: width * 0.4, backgroundColor: Colors.white, child: Image.asset('assets/images/splash.png')),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 40),
              child: SizedBox(
                width: width * 0.48,
                child: const Text(
                  ' Enjoy Your Food',
                  style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.114,
                  vertical: width * 0.05,
                ),
                child: const Text(
                  'GetStarted',
                  style: TextStyle(color: Color(0x99FD3131), fontSize: 20),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MenuScreen()), (route) => false);
              },
            ),
          ],
        )),
      ),
    );
  }
}
