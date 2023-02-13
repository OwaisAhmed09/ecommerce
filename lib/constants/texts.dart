import 'package:flutter/material.dart';

class Textstyle extends StatelessWidget {
  const Textstyle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(18, 10, 0, 0),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff8F92A1),
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class headingtext extends StatelessWidget {
  const headingtext({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff171717),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class textfielddynamic extends StatelessWidget {
  textfielddynamic(
      {super.key,
      required this.labeltext,
      required this.icon,
      required this.controller});

  final String labeltext;
  var controller;
  var icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          icon: icon,
          // border: OutlineInputBorder(

          labelText: labeltext),
    );
  }
}

class Passworddynamic extends StatefulWidget {
  Passworddynamic(
      {super.key,
      required this.labeltext,
      required this.icon,
      required this.controller});

  final String labeltext;
  var controller;
  var icon;

  @override
  State<Passworddynamic> createState() => _PassworddynamicState();
}

class _PassworddynamicState extends State<Passworddynamic> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // obscureText: true,
      controller: widget.controller,
      decoration: InputDecoration(
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          ),
          icon: widget.icon,
          // border: OutlineInputBorder(

          labelText: widget.labeltext),
    );
  }
}
