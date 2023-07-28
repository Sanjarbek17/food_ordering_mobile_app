
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class MinusOrPlus extends StatelessWidget {
  const MinusOrPlus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/icons/minus.svg'),
        const SizedBox(width: 10),
        const Text('1', textAlign: TextAlign.center, style: TextStyle(color: Color(0xA0E91414), fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
        const SizedBox(width: 10),
        SvgPicture.asset('assets/icons/plus.svg'),
      ],
    );
  }
}
