import 'dart:async';
import 'package:ecommerce/screens/loging_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'loging_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Image.asset('assets/images/leftside.png'),
                ]),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 230.0),
                  child: Image.asset(
                    'assets/images/rightside.png',
                    alignment: Alignment.centerLeft,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 30),
                child: Image.asset('assets/images/center.png',
                    alignment: Alignment.center),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Welcome to STStore !',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  color: Color.fromARGB(255, 23, 23, 23),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      'With long experience in the audio industry,',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color.fromARGB(255, 23, 23, 23),
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      'we create the best quality products',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromARGB(255, 23, 23, 23),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LOging_screen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(234, 198, 171, 89),
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                icon: const Icon(
                  Icons.arrow_circle_right_outlined,
                ),
                label: Text(
                  "GET STARTED",
                )),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
