import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signinbutton extends StatelessWidget {
  signinbutton(
      {super.key,
      required this.labeltext,
      required this.backgroundcolor,
      required this.icon,
      required this.onPressed});
  final String labeltext;
  var icon;
  var onPressed;
  var backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolor,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      label: Text(labeltext),
      icon: icon,
    );
  }
}
