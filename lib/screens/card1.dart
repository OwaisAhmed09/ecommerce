import 'package:ecommerce/constants/texts.dart';
import 'package:ecommerce/wigets/cardwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class card1 extends StatefulWidget {
  const card1({super.key});

  @override
  State<card1> createState() => _card1State();
}

class _card1State extends State<card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedCardExample(
              image: "assets/images/card 1.png",
              text: "main", 
            ),
          ],
        ),
      ),
    );
  }
}
