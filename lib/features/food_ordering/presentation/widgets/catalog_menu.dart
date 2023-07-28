import 'package:flutter/material.dart';


class listView extends StatelessWidget {
  const listView({super.key, required this.height, required this.lst});
  final List lst;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xD8FF0202),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(8),
              height: height * 0.09,
              width: height * 0.09,
              child: Image.asset(
                '${lst[index]['picture']}',
              ),
            ),
            Text(
              '${lst[index]['name']}',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        );
      },
    );
  }}