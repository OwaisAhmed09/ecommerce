import 'package:flutter/material.dart';

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample(
      {super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          // SizedBox(
          //   height: 20,
          // ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
